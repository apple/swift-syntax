# This source file is part of the Swift.org open source project
#
# Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
# Licensed under Apache License v2.0 with Runtime Library Exception
#
# See http://swift.org/LICENSE.txt for license information
# See http://swift.org/CONTRIBUTORS.txt for Swift project authors

# cmake generation for Swift adds an order only dependency, which matches how C-family languages
# works. In that case, however, ninja (and presumably other generators) will rebuild on header
# changes. That's not the case for Swift, and thus if A -> B, A is not being rebuilt when the
# ABI/API of B changes.
#
# For now workaround this by touching a file whenever B is rebuilt and then compiling that file as
# part of A. Ideally this file would be generated by each of the targets, but that dependency didn't
# seem to be being tracked.
#
# Remove once rdar://102202478 is fixed.
function(target_link_swift_syntax_libraries TARGET)
  cmake_parse_arguments(ARGS "" "" "PUBLIC" ${ARGN})

  target_link_libraries(${TARGET} PUBLIC ${ARGS_PUBLIC})
  foreach(DEPENDENCY ${ARGS_PUBLIC})
    add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/forced-${DEPENDENCY}-dep.swift
      COMMAND ${CMAKE_COMMAND} -E touch ${CMAKE_CURRENT_BINARY_DIR}/forced-${DEPENDENCY}-dep.swift
      DEPENDS ${DEPENDENCY}
      )
    target_sources(${TARGET} PRIVATE
      ${CMAKE_CURRENT_BINARY_DIR}/forced-${DEPENDENCY}-dep.swift
    )
  endforeach()
endfunction()

# Add a new host library with the given name.
function(add_swift_syntax_library name)
  set(ASHL_SOURCES ${ARGN})

  # Create the library target.
  add_library(${name} ${ASHL_SOURCES})

  # Determine where Swift modules will be built and installed.
  set(module_dir ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
  set(module_base "${module_dir}/${name}.swiftmodule")
  set(module_file "${module_base}/${SWIFT_HOST_MODULE_TRIPLE}.swiftmodule")
  set(module_interface_file "${module_base}/${SWIFT_HOST_MODULE_TRIPLE}.swiftinterface")
  set(module_sourceinfo_file "${module_base}/${SWIFT_HOST_MODULE_TRIPLE}.swiftsourceinfo")

  # Add a custom target to create the module directory.
  add_custom_command(
      TARGET ${name}
      PRE_BUILD
      COMMAND "${CMAKE_COMMAND}" -E make_directory ${module_base}
      COMMENT "Generating module directory for ${name}")

  # Touch the library and objects to workaround their mtime not being updated
  # when there are no real changes (eg. a file was updated with a comment).
  # Ideally this should be done in the driver, which could only update the
  # files that have changed.
  add_custom_command(
      TARGET ${name}
      POST_BUILD
      COMMAND "${CMAKE_COMMAND}" -E touch_nocreate $<TARGET_FILE:${name}> $<TARGET_OBJECTS:${name}> "${module_base}"
      COMMAND_EXPAND_LISTS
      COMMENT "Update mtime of library outputs workaround")

  # Install the Swift module into the appropriate location.
  set_target_properties(${name}
    PROPERTIES Swift_MODULE_DIRECTORY ${module_dir}
  )

  # Configure the emission of the Swift module files.
  target_compile_options("${name}" PRIVATE
    $<$<COMPILE_LANGUAGE:Swift>:
      -module-name;${name};
      -enable-library-evolution;
      -emit-module-path;${module_file};
      -emit-module-source-info-path;${module_sourceinfo_file};
      -emit-module-interface-path;${module_interface_file}
      >)

  if(CMAKE_VERSION VERSION_LESS 3.26.0 AND SWIFT_SYNTAX_ENABLE_WMO_PRE_3_26)
    target_compile_options(${name} PRIVATE
        $<$<COMPILE_LANGUAGE:Swift>:-wmo>)
  endif()

  if(LLVM_USE_LINKER)
    target_link_options(${name} PRIVATE
      "-use-ld=${LLVM_USE_LINKER}"
    )
  endif()

  # NOTE: workaround for CMake not setting up include flags yet
  set_target_properties(${name} PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES ${module_dir}
  )

  set_target_properties(${name} PROPERTIES
    BUILD_WITH_INSTALL_RPATH YES
  )

  get_target_property(lib_type ${name} TYPE)
  if(lib_type STREQUAL SHARED_LIBRARY AND CMAKE_SYSTEM_NAME STREQUAL Darwin)
    # Allow install_name_tool to update paths (for rdar://109473564)
    set_property(TARGET ${name} APPEND_STRING PROPERTY
                 LINK_FLAGS " -Xlinker -headerpad_max_install_names")
  endif()

  if(PROJECT_IS_TOP_LEVEL)
    # Install this target
    install(TARGETS ${name}
      EXPORT SwiftSyntaxTargets
      ARCHIVE DESTINATION lib/${SWIFT_HOST_LIBRARIES_SUBDIRECTORY}
      LIBRARY DESTINATION lib/${SWIFT_HOST_LIBRARIES_SUBDIRECTORY}
      RUNTIME DESTINATION bin
    )

    # Install the module files.
    install(
      DIRECTORY ${module_base}
      DESTINATION lib/${SWIFT_HOST_LIBRARIES_SUBDIRECTORY}
      FILES_MATCHING PATTERN "*.swiftinterface"
    )
  else()
    set_property(GLOBAL APPEND PROPERTY SWIFT_EXPORTS ${name})
  endif()
endfunction()
