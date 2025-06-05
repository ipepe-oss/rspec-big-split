# 1. Fix RuboCop offenses

Date: 2025-06-05

## Status
Accepted

## Context
Rubocop detected style offenses preventing clean builds. The gemspec also required a Ruby version lower than our Rubocop TargetRubyVersion.

## Decision
- Update the gemspec to require Ruby >= 2.4 to match Rubocop configuration.
- Split a long warning line in the executable for better readability and to satisfy Rubocop's LineLength cop.
- Document the custom formatter with a brief comment and require `rspec/core` explicitly.

## Consequences
- Codebase is RuboCop clean under default configuration.
- Documentation now clarifies purpose of custom formatter.
