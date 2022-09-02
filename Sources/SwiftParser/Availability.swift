//===------------------------ Availability.swift ----------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2022 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

@_spi(RawSyntax) import SwiftSyntax

extension Parser {
  enum AvailabilitySpecSource {
    case available
    case unavailable
    case macro
  }

  /// Parse a list of availability arguments.
  ///
  /// Grammar
  /// =======
  ///
  ///     availability-arguments → availability-argument | availability-argument , availability-arguments
  mutating func parseAvailabilitySpecList(
    from source: AvailabilitySpecSource
  ) -> RawAvailabilitySpecListSyntax {
    var elements = [RawAvailabilityArgumentSyntax]()
    do {
      var keepGoing: RawTokenSyntax? = nil
      repeat {
        let entry: RawSyntax
        switch source {
        case .available where self.currentToken.isIdentifier,
            .unavailable where self.currentToken.isIdentifier:
          entry = RawSyntax(self.parseAvailabilityMacro())
        default:
          entry = self.parseAvailabilitySpec()
        }

        keepGoing = self.consume(if: .comma)
        elements.append(RawAvailabilityArgumentSyntax(
          entry: entry, trailingComma: keepGoing, arena: self.arena))

        // Before continuing to parse the next specification, we check that it's
        // also in the shorthand syntax and recover from it.
        if
          keepGoing != nil,
          self.currentToken.isIdentifier,
          AvailabilityArgumentKind(rawValue: self.currentToken.tokenText) != nil
        {
          var tokens = [RawTokenSyntax]()
          tokens.append(self.consumeAnyToken())
          while !self.at(.eof) && !self.at(.comma) && !self.at(.rightParen) {
            tokens.append(self.consumeAnyToken())
          }
          let syntax = RawTokenListSyntax(elements: tokens, arena: self.arena)
          keepGoing = self.consume(if: .comma)
          elements.append(RawAvailabilityArgumentSyntax(
            entry: RawSyntax(syntax), trailingComma: keepGoing, arena: self.arena))
        }
      } while keepGoing != nil
    }

    return RawAvailabilitySpecListSyntax(elements: elements, arena: self.arena)
  }

  enum AvailabilityArgumentKind: SyntaxText {
    case message
    case renamed
    case introduced
    case deprecated
    case obsoleted
    case unavailable
    case noasync
  }

  mutating func parseExtendedAvailabilitySpecList() -> RawAvailabilitySpecListSyntax {
    var elements = [RawAvailabilityArgumentSyntax]()

    // Parse the platform from the first element.
    let platform = self.consumeAnyToken()
    var keepGoing: RawTokenSyntax? = self.consume(if: .comma)
    elements.append(RawAvailabilityArgumentSyntax(
      entry: RawSyntax(platform), trailingComma: keepGoing, arena: self.arena))

    do {
      while keepGoing != nil {
        guard self.currentToken.tokenKind == .identifier,
              let argKind = AvailabilityArgumentKind(rawValue: self.currentToken.tokenText) else {
          // Not sure what this label is but, let's just eat it and
          // keep going.
          let arg = self.consumeAnyToken()
          keepGoing = self.consume(if: .comma)
          elements.append(RawAvailabilityArgumentSyntax(
            entry: RawSyntax(arg), trailingComma: keepGoing, arena: self.arena))
          continue
        }

        let entry: RawSyntax
        switch argKind {
        case .message, .renamed:
          let argumentLabel = self.consumeAnyToken()
          let (unexpectedBeforeColon, colon) = self.expect(.colon)
          // FIXME: Make sure this is a string literal with no interpolation.
          let stringValue = self.consumeAnyToken()

          entry = RawSyntax(RawAvailabilityLabeledArgumentSyntax(
            label: argumentLabel,
            unexpectedBeforeColon,
            colon: colon,
            value: RawSyntax(stringValue),
            arena: self.arena
          ))
        case .introduced, .obsoleted:
          let argumentLabel = self.consumeAnyToken()
          let (unexpectedBeforeColon, colon) = self.expect(.colon)
          let version = self.parseVersionTuple()
          entry = RawSyntax(RawAvailabilityLabeledArgumentSyntax(
            label: argumentLabel,
            unexpectedBeforeColon,
            colon: colon,
            value: RawSyntax(version),
            arena: self.arena
          ))
        case .deprecated:
          let argumentLabel = self.consumeAnyToken()
          if let colon = self.consume(if: .colon) {
            let version = self.parseVersionTuple()
            entry = RawSyntax(RawAvailabilityLabeledArgumentSyntax(
              label: argumentLabel,
              colon: colon,
              value: RawSyntax(version),
              arena: self.arena
            ))
          } else {
            entry = RawSyntax(argumentLabel)
          }
        case .unavailable, .noasync:
          let argument = self.consumeAnyToken()
          // FIXME: Can we model this in SwiftSyntax by making the
          // 'labeled' argument part optional?
          entry = RawSyntax(argument)
        }

        keepGoing = self.consume(if: .comma)
        elements.append(RawAvailabilityArgumentSyntax(
          entry: entry, trailingComma: keepGoing, arena: self.arena))
      }
    }
    return RawAvailabilitySpecListSyntax(elements: elements, arena: self.arena)
  }

  /// Parse an availability argument.
  ///
  /// Grammar
  /// =======
  ///
  ///     availability-argument → platform-name platform-version
  ///     availability-argument → *
  mutating func parseAvailabilitySpec() -> RawSyntax {
    if self.currentToken.isBinaryOperator && self.currentToken.tokenText == "*" {
      let star = self.consumeAnyToken()
      // FIXME: Use makeAvailabilityVersionRestriction here - but swift-format
      // doesn't expect it.
      return RawSyntax(star)
    }

    if self.currentToken.isIdentifier || self.at(.wildcardKeyword) {
      if self.currentToken.tokenText == "swift" || self.currentToken.tokenText == "_PackageDescription" {
        return RawSyntax(self.parsePlatformAgnosticVersionConstraintSpec())
      }
    }

    return RawSyntax(self.parsePlatformVersionConstraintSpec())
  }

  mutating func parsePlatformAgnosticVersionConstraintSpec() -> RawAvailabilityVersionRestrictionSyntax {
    assert(self.currentToken.isIdentifier || self.at(.wildcardKeyword))
    let platform = self.consumeAnyToken()
    let version = self.parseVersionTuple()
    return RawAvailabilityVersionRestrictionSyntax(
      platform: platform, version: version, arena: self.arena)
  }

  /// Parse a platform-specific version constraint.
  ///
  /// The grammar calls out Apple-specific names, even though the Swift compiler
  /// will accept any identifier here. The compiler will diagnose usages of platforms it
  /// doesn't know about later.
  ///
  /// Grammar
  /// =======
  ///
  ///     platform-name → iOS | iOSApplicationExtension
  ///     platform-name → macOS | macOSApplicationExtension
  ///     platform-name → macCatalyst | macCatalystApplicationExtension
  ///     platform-name → watchOS
  ///     platform-name → tvOS
  mutating func parsePlatformVersionConstraintSpec() -> RawAvailabilityVersionRestrictionSyntax {
    // Register the platform name as a keyword token.
    let plaform = self.consume(remapping: .contextualKeyword)
    let version = self.parseVersionTuple()
    return RawAvailabilityVersionRestrictionSyntax(
      platform: plaform, version: version, arena: self.arena)
  }

  /// Parse an availability macro.
  ///
  /// Availability macros are not an official part of the Swift language.
  ///
  /// Grammar
  /// =======
  ///
  ///     availability-argument → macro-name platform-version
  mutating func parseAvailabilityMacro() -> RawAvailabilityVersionRestrictionSyntax {
    let platform = self.consumeAnyToken()

    let version: RawVersionTupleSyntax?
    if case .integerLiteral = self.currentToken.tokenKind {
      version = self.parseVersionTuple()
    } else if case .floatingLiteral = self.currentToken.tokenKind {
      version = self.parseVersionTuple()
    } else {
      version = nil
    }

    return RawAvailabilityVersionRestrictionSyntax(
      platform: platform, version: version, arena: self.arena)
  }

  /// Parse a dot-separated list of version numbers.
  ///
  /// Grammar
  /// =======
  ///
  ///     platform-version → decimal-digits
  ///     platform-version → decimal-digits '.' decimal-digits
  ///     platform-version → decimal-digits '.' decimal-digits '.' decimal-digits
  mutating func parseVersionTuple() -> RawVersionTupleSyntax {
    if self.currentToken.tokenKind == .integerLiteral {
      let majorMinor = self.consumeAnyToken()
      return RawVersionTupleSyntax(
        majorMinor: RawSyntax(majorMinor), patchPeriod: nil, patchVersion: nil,
        arena: self.arena)
    }

    let majorMinor = self.consumeAnyToken()
    let period = self.consume(if: .period)

    let patch: RawTokenSyntax?
    if period != nil {
      patch = self.consumeAnyToken()
    } else {
      patch = nil
    }

    return RawVersionTupleSyntax(
      majorMinor: RawSyntax(majorMinor), patchPeriod: period, patchVersion: patch,
      arena: self.arena)
  }
}
