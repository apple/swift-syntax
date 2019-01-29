#!/usr/bin/env python

from __future__ import print_function

import argparse
import os
import subprocess
import sys
import tempfile
import errno
import platform

PACKAGE_DIR = os.path.dirname(os.path.realpath(__file__))
WORKSPACE_DIR = os.path.realpath(PACKAGE_DIR + '/..')

INCR_TRANSFER_ROUNDTRIP_EXEC = \
    WORKSPACE_DIR + '/swift/utils/incrparse/incr_transfer_round_trip.py'
GYB_EXEC = WORKSPACE_DIR + '/swift/utils/gyb'
LIT_EXEC = WORKSPACE_DIR + '/llvm/utils/lit/lit.py'

### Generate Xcode project

def xcode_gen(config):
    print('** Generate SwiftSyntax as an Xcode project **')
    os.chdir(PACKAGE_DIR)
    swiftpm_call = ['swift', 'package', 'generate-xcodeproj']
    if config:
        swiftpm_call.extend(['--xcconfig-overrides', config])
    check_call(swiftpm_call)

### Generic helper functions

def printerr(message):
    print(message, file=sys.stderr)

def note(message):
    print("--- %s: note: %s" % (os.path.basename(sys.argv[0]), message))
    sys.stdout.flush()

def fatal_error(message):
    printerr(message)
    sys.exit(1)

def escapeCmdArg(arg):
    if '"' in arg or ' ' in arg:
        return '"%s"' % arg.replace('"', '\\"')
    else:
        return arg


def call(cmd, env=os.environ, stdout=None, stderr=subprocess.STDOUT, 
         verbose=False):
    if verbose:
        print(' '.join([escapeCmdArg(arg) for arg in cmd]))
    process = subprocess.Popen(cmd, env=env, stdout=stdout, stderr=stderr)
    process.wait()

    return process.returncode


def check_call(cmd, env=os.environ, verbose=False):
    if verbose:
        print(' '.join([escapeCmdArg(arg) for arg in cmd]))
    return subprocess.check_call(cmd, env=env, stderr=subprocess.STDOUT)


def realpath(path):
    if path is None:
        return None
    return os.path.realpath(path)


### Build phases

## Generating gyb files

def check_gyb_exec():
    if not os.path.exists(GYB_EXEC):
        fatal_error('''
Error: Could not find gyb. 

Make sure you have the main swift repo checked out next to the swift-syntax 
repository.
Refer to README.md for more information.
''')


def check_rsync():
    with open(os.devnull, 'w')  as DEVNULL:
        if call(['rsync', '--version'], stdout=DEVNULL) != 0:
            fatal_error('Error: Could not find rsync.')


def generate_gyb_files(verbose, add_source_locations):
    print('** Generating gyb Files **')

    check_gyb_exec()
    check_rsync()

    swiftsyntax_sources_dir = PACKAGE_DIR + '/Sources/SwiftSyntax'
    temp_files_dir = tempfile.gettempdir()
    generated_files_dir = swiftsyntax_sources_dir + '/gyb_generated'

    if not os.path.exists(temp_files_dir):
        os.makedirs(temp_files_dir)
    if not os.path.exists(generated_files_dir):
        os.makedirs(generated_files_dir)

    # Generate the new .swift files in a temporary directory and only copy them
    # to Sources/SwiftSyntax/gyb_generated if they are different than the files
    # already residing there. This way we don't touch the generated .swift
    # files if they haven't changed and don't trigger a rebuild.
    for gyb_file in os.listdir(swiftsyntax_sources_dir):
        if not gyb_file.endswith('.gyb'):
            continue

        # Slice off the '.gyb' to get the name for the output file
        output_file_name = gyb_file[:-4]

        # Source locations are added by default by gyb, and cleared by passing
        # `--line-directive=` (nothing following the `=`) to the generator. Our
        # flag is the reverse; we don't want them by default, only if requested.
        line_directive_flags = [] if add_source_locations \
                                  else ['--line-directive=']

        # Generate the new file
        check_call([GYB_EXEC] +
                   [swiftsyntax_sources_dir + '/' + gyb_file] +
                   ['-o', temp_files_dir + '/' + output_file_name] +
                   line_directive_flags,
                   verbose=verbose)

        # Copy the file if different from the file already present in 
        # gyb_generated
        check_call(['rsync'] +
                   ['--checksum'] +
                   [temp_files_dir + '/' + output_file_name] +
                   [generated_files_dir + '/' + output_file_name],
                   verbose=verbose)

    print('Done Generating gyb Files')


## Building swiftSyntax

def get_installed_name():
    return 'SwiftSyntax'

def get_installed_dylib_name():
    return 'lib' + get_installed_name() + '.dylib'

def get_swiftpm_invocation(spm_exec, build_dir, parser_header_dir,
                           parser_lib_dir, release):
    if spm_exec == 'swift build':
        swiftpm_call = ['swift', 'build']
    elif spm_exec == 'swift test':
        swiftpm_call = ['swift', 'test']
    else:
        swiftpm_call = [spm_exec]

    swiftpm_call.extend(['--package-path', PACKAGE_DIR])
    if release:
        swiftpm_call.extend(['--configuration', 'release'])
    if build_dir:
        swiftpm_call.extend(['--build-path', build_dir])

    # Swift compiler needs to know the module link name.
    swiftpm_call.extend(['-Xswiftc', '-module-link-name', '-Xswiftc', get_installed_name()])

    # To find the syntax parser library.
    if parser_header_dir:
        swiftpm_call.extend(['-Xswiftc', '-I', '-Xswiftc', parser_header_dir])
    if parser_lib_dir:
        swiftpm_call.extend(['-Xswiftc', '-L', '-Xswiftc', parser_lib_dir])
        if platform.system() == 'Darwin':
            swiftpm_call.extend(['-Xlinker', '-rpath', '-Xlinker', parser_lib_dir])

    # To speed up compilation.
    swiftpm_call.extend(['-Xswiftc', '-enforce-exclusivity=unchecked'])
    return swiftpm_call

def build_swiftsyntax(swift_build_exec, swiftc_exec, build_dir,
                      parser_header_dir, parser_lib_dir,
                      build_test_util, release,
                      verbose, disable_sandbox=False):
    print('** Building SwiftSyntax **')

    swiftpm_call = get_swiftpm_invocation(spm_exec=swift_build_exec,
                                          build_dir=build_dir,
                                          parser_header_dir=parser_header_dir,
                                          parser_lib_dir=parser_lib_dir,
                                          release=release)
    swiftpm_call.extend(['--product', 'SwiftSyntax'])

    if disable_sandbox:
      swiftpm_call.append('--disable-sandbox')

    # Only build lit-test-helper if we are planning to run tests
    if build_test_util:
        swiftpm_call.extend(['--product', 'lit-test-helper'])

    if verbose:
        swiftpm_call.extend(['--verbose'])
    _environ = dict(os.environ)
    _environ['SWIFT_EXEC'] = swiftc_exec
    _environ['SWIFT_SYNTAX_BUILD_SCRIPT'] = ''
    check_call(swiftpm_call, env=_environ, verbose=verbose)


## Testing

def run_tests(swift_test_exec, build_dir, parser_header_dir, parser_lib_dir,
              release, swift_build_exec, filecheck_exec, swiftc_exec, verbose):
    print('** Running SwiftSyntax Tests **')

    optional_swiftc_exec = swiftc_exec
    if optional_swiftc_exec == 'swift':
      optional_swiftc_exec = None

    lit_success = run_lit_tests(swift_build_exec=swift_build_exec,
                                build_dir=build_dir,
                                parser_header_dir=parser_header_dir,
                                parser_lib_dir=parser_lib_dir,
                                release=release,
                                swiftc_exec=optional_swiftc_exec,
                                filecheck_exec=filecheck_exec,
                                verbose=verbose)
    if not lit_success:
        return False

    xctest_success = run_xctests(swift_test_exec=swift_test_exec,
                                 build_dir=build_dir,
                                 parser_header_dir=parser_header_dir,
                                 parser_lib_dir=parser_lib_dir,
                                 release=release,
                                 swiftc_exec=swiftc_exec,
                                 verbose=verbose)
    if not xctest_success:
        return False

    return True

# Lit-based tests

def check_lit_exec():
    if not os.path.exists(LIT_EXEC):
        fatal_error('''
Error: Could not find lit.py. 

Make sure you have the llvm repo checked out next to the swift-syntax repo. 
Refer to README.md for more information.
''')


def check_incr_transfer_roundtrip_exec():
    if not os.path.exists(INCR_TRANSFER_ROUNDTRIP_EXEC):
        fatal_error('''
Error: Could not find incr_transfer_round_trip.py. 

Make sure you have the main swift repo checked out next to the swift-syntax 
repo. 
Refer to README.md for more information.
''')


def find_lit_test_helper_exec(swift_build_exec, parser_header_dir, parser_lib_dir,
                              build_dir, release):
    swiftpm_call = get_swiftpm_invocation(spm_exec=swift_build_exec,
                                          build_dir=build_dir,
                                          parser_header_dir=parser_header_dir,
                                          parser_lib_dir=parser_lib_dir,
                                          release=release)
    swiftpm_call.extend(['--product', 'lit-test-helper'])
    swiftpm_call.extend(['--show-bin-path'])

    bin_dir = subprocess.check_output(swiftpm_call, stderr=subprocess.STDOUT)
    return bin_dir.strip() + '/lit-test-helper'


def run_lit_tests(swift_build_exec, build_dir, parser_header_dir, parser_lib_dir,
                  release, swiftc_exec, filecheck_exec, verbose):
    print('** Running lit-based tests **')

    check_lit_exec()
    check_incr_transfer_roundtrip_exec()

    lit_test_helper_exec = \
        find_lit_test_helper_exec(swift_build_exec=swift_build_exec,
                                  build_dir=build_dir,
                                  parser_header_dir=parser_header_dir,
                                  parser_lib_dir=parser_lib_dir,
                                  release=release)

    lit_call = [LIT_EXEC]
    lit_call.extend([PACKAGE_DIR + '/lit_tests'])
    
    if swiftc_exec:
        lit_call.extend(['--param', 'SWIFTC=' + realpath(swiftc_exec)])
    if filecheck_exec:
        lit_call.extend(['--param', 'FILECHECK=' + filecheck_exec])
    if lit_test_helper_exec:
        lit_call.extend(['--param', 'LIT_TEST_HELPER=' + lit_test_helper_exec])
    lit_call.extend(['--param', 'INCR_TRANSFER_ROUND_TRIP.PY=' +
                     INCR_TRANSFER_ROUNDTRIP_EXEC])

    # Print all failures
    lit_call.extend(['--verbose'])
    # Don't show all commands if verbose is not enabled
    if not verbose:
        lit_call.extend(['--succinct'])
    return call(lit_call, verbose=verbose) == 0


## XCTest based tests

def run_xctests(swift_test_exec, build_dir, parser_header_dir, parser_lib_dir,
                release, swiftc_exec, verbose):
    print('** Running XCTests **')
    swiftpm_call = get_swiftpm_invocation(spm_exec=swift_test_exec,
                                          build_dir=build_dir,
                                          parser_header_dir=parser_header_dir,
                                          parser_lib_dir=parser_lib_dir,
                                          release=release)

    if verbose:
        swiftpm_call.extend(['--verbose'])

    subenv = dict(os.environ)
    if swiftc_exec:
        # Add the swiftc exec to PATH so that SwiftSyntax finds it
        subenv['PATH'] = realpath(swiftc_exec + '/..') + ':' + subenv['PATH']
    subenv['SWIFT_EXEC'] = swiftc_exec
    return call(swiftpm_call, env=subenv, verbose=verbose) == 0

def delete_rpath(rpath, binary):
    if platform.system() == 'Darwin':
        cmd = ["install_name_tool", "-delete_rpath", rpath, binary]
        note("removing RPATH from %s: %s" % (binary, ' '.join(cmd)))
        result = subprocess.call(cmd)
    else:
        fatal_error("unable to remove RPATHs on this platform")

def change_id_rpath(rpath, binary):
    if platform.system() == 'Darwin':
        cmd = ["install_name_tool", "-id", rpath, binary]
        note("changing id in %s: %s" % (binary, ' '.join(cmd)))
        result = subprocess.call(cmd)
        if result != 0:
            fatal_error("command failed with exit status %d" % (result,))
    else:
        fatal_error("unable to invoke install_name_tool on this platform")

def check_and_sync(file_path, install_path):
    cmd = ["rsync", "-a", file_path, install_path]
    note("installing %s: %s" % (os.path.basename(file_path), ' '.join(cmd)))
    result = subprocess.check_call(cmd)
    if result != 0:
        fatal_error("install failed with exit status %d" % (result,))

def install(build_dir, dylib_dir, swiftmodule_dir, stdlib_rpath):
    dylibPath = build_dir + '/libSwiftSyntax.dylib'
    modulePath = build_dir + '/SwiftSyntax.swiftmodule'
    docPath = build_dir + '/SwiftSyntax.swiftdoc'
    # users should find the dylib as if it's a part of stdlib.
    change_id_rpath('@rpath/' + get_installed_dylib_name(), dylibPath)
    # we don't wanna hard-code the stdlib dylibs into rpath.
    delete_rpath(stdlib_rpath, dylibPath)
    check_and_sync(file_path=dylibPath,
                   install_path=dylib_dir+'/'+get_installed_dylib_name())
    # Optionally install .swiftmodule
    if swiftmodule_dir:
        check_and_sync(file_path=modulePath,install_path=swiftmodule_dir)
        check_and_sync(file_path=docPath,install_path=swiftmodule_dir)
    return

### Main

def main():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description='''
Build and test script for SwiftSyntax.

Build SwiftSyntax by generating all necessary files form the corresponding
.swift.gyb files first. For this, SwiftSyntax needs to be check out alongside
the main swift repo (http://github.com/apple/swift/) in the following structure
- (containing directory)
  - swift
  - swift-syntax
It is not necessary to build the compiler project.

The build script can also drive the test suite included in the SwiftSyntax
repo. This requires a custom build of the compiler project since it accesses
test utilities that are not shipped as part of the toolchains. See the Testing
section for arguments that need to be specified for this.
''')

    basic_group = parser.add_argument_group('Basic')

    basic_group.add_argument('--build-dir', default=None, help='''
        The directory in which build products shall be put. If omitted a
        directory named '.build' will be put in the swift-syntax directory.
        ''')
    basic_group.add_argument('-v', '--verbose', action='store_true', help='''
        Enable extensive logging of executed steps.
        ''')
    basic_group.add_argument('-r', '--release', action='store_true', help='''
      Build as a release build.
      ''')
    basic_group.add_argument('--add-source-locations', action='store_true',
                             help='''
      Insert ###sourceLocation comments in generated code for line-directive.
      ''')
    basic_group.add_argument('--install', action='store_true',
                             help='''
      Install the build artifact to a specified toolchain directory.
      ''')
    basic_group.add_argument('--generate-xcodeproj', action='store_true',
                             help='''
      Generate an Xcode project for SwiftSyntax.
      ''')
    basic_group.add_argument('--xcconfig-path',
                             help='''
      The path to an xcconfig file for generating Xcode projct.
      ''')
    basic_group.add_argument('--use-xcbuild', action='store_true', help='''
      Use Xcode to build the product.
      ''')
    basic_group.add_argument('--dylib-dir',
                             help='''
      The directory to where the .dylib should be installed.
      ''')
    basic_group.add_argument('--swiftmodule-dir',
                             help='''
      The directory to where the .swiftmodule should be installed.
      ''')

    build_group = parser.add_argument_group('Build')
    build_group.add_argument('--disable-sandbox',
                             action='store_true',
                             help='Disable sandboxes when building with '
                                  'Swift PM')

    testing_group = parser.add_argument_group('Testing')
    testing_group.add_argument('-t', '--test', action='store_true',
                               help='Run tests')
    
    testing_group.add_argument('--swift-build-exec', default='swift build',
                               help='''
      Path to the swift-build executable that is used to build SwiftPM projects
      If not specified the the 'swift build' command will be used.
      ''')
    testing_group.add_argument('--swift-test-exec', default='swift test',
                               help='''
      Path to the swift-test executable that is used to test SwiftPM projects
      If not specified the the 'swift test' command will be used.
      ''')
    testing_group.add_argument('--swiftc-exec', default='swiftc', help='''
      Path to the swift executable. If not specified the swiftc exeuctable
      will be inferred from PATH.
      ''')
    testing_group.add_argument('--syntax-parser-header-dir', default=None,
                               help='''
      Path to the header and modulemap for the syntax parser library.
      If not specified no extra search path will be provided, it will be assumed
      that the library is in swift's default search paths.
      ''')
    testing_group.add_argument('--syntax-parser-lib-dir', default=None,
                               help='''
      Path to the syntax parser shared library. If not specified no extra search
      path will be provided, it will be assumed that the library is in swift's
      default search paths.
      ''')
    testing_group.add_argument('--swift-syntax-test-exec', default=None,
                               help='''
      Path to the swift-syntax-test executable that was built from the main
      Swift repo. If not specified, it will be looked up from PATH.
      ''')
    testing_group.add_argument('--filecheck-exec', default=None, help='''
      Path to the FileCheck executable that was built as part of the LLVM
      repository. If not specified, it will be looked up from PATH.
      ''')

    args = parser.parse_args(sys.argv[1:])
    if args.use_xcbuild:
        # building/installing by xcode is handled separately.
        note("Building/installing swiftsyntax by using xcode")
        sys.exit(0)
    if args.install:
        if not args.dylib_dir:
            fatal_error('Must specify directory to install')
        if not args.build_dir:
            fatal_error('Must specify build directory to copy from')
        if args.release:
            build_dir=args.build_dir + '/release'
        else:
            # will this ever happen?
            build_dir=args.build_dir + '/debug'
        stdlib_rpath = realpath(os.path.dirname(args.swiftc_exec) + '/../lib/swift/macosx/')
        install(build_dir=build_dir, dylib_dir=args.dylib_dir,
                swiftmodule_dir=args.swiftmodule_dir,
                stdlib_rpath=stdlib_rpath)
        sys.exit(0)

    try:
        generate_gyb_files(verbose=args.verbose,
                           add_source_locations=args.add_source_locations)
    except subprocess.CalledProcessError as e:
        printerr('Error: Generating .gyb files failed')
        printerr('Executing: %s' % ' '.join(e.cmd))
        printerr(e.output)
        sys.exit(1)

    if args.generate_xcodeproj:
      xcode_gen(config=args.xcconfig_path)
      sys.exit(0)

    try:
        build_swiftsyntax(swift_build_exec=args.swift_build_exec,
                          swiftc_exec=args.swiftc_exec,
                          build_dir=args.build_dir,
                          parser_header_dir=args.syntax_parser_header_dir,
                          parser_lib_dir=args.syntax_parser_lib_dir,
                          build_test_util=args.test,
                          release=args.release,
                          verbose=args.verbose,
                          disable_sandbox=args.disable_sandbox)
    except subprocess.CalledProcessError as e:
        printerr('Error: Building SwiftSyntax failed')
        printerr('Executing: %s' % ' '.join(e.cmd))
        printerr(e.output)
        sys.exit(1)

    if args.test:
        try:
            success = run_tests(swift_test_exec=args.swift_test_exec,
                                build_dir=realpath(args.build_dir),
                                parser_header_dir=args.syntax_parser_header_dir,
                                parser_lib_dir=args.syntax_parser_lib_dir,
                                release=args.release,
                                swift_build_exec=args.swift_build_exec,
                                filecheck_exec=realpath(args.filecheck_exec),
                                swiftc_exec=args.swiftc_exec,
                                verbose=args.verbose)
            if not success:
                # An error message has already been printed by the failing test
                # suite
                sys.exit(1)
            else:
                print('** All tests passed **')
        except subprocess.CalledProcessError as e:
            printerr('Error: Running tests failed')
            printerr('Executing: %s' % ' '.join(e.cmd))
            printerr(e.output)
            sys.exit(1)


if __name__ == '__main__':
    main()
