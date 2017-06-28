# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format listed at [Keep A Changelog](http://keepachangelog.com/)

## [Unreleased]
### Added
- Support for Ruby 2.3 and 2.4 (@eheydrick)

### Removed
- Support for Ruby < 2 (@eheydrick)
- Unnecessary `json` dependency (@eheydrick)

### Changed
- Loosen `sensu-plugin` dependency to `~> 1.2` (@mattyjones)
- Update to Rubocop `0.40` and cleanup (@eheydrick)

## [0.1.0] - 2015-11-06
### Added
- new script `check-sidekiq-dead-queue.rb`

## [0.0.2] - 2015-07-14
### Changed
- updated sensu-plugin gem to 1.2.0

## 0.0.1 - 2015-06-27
### Added
- initial release

[Unreleased]: https://github.com/sensu-plugins/sensu-plugins-sidekiq/compare/0.1.0...HEAD
[0.1.0]: https://github.com/sensu-plugins/sensu-plugins-sidekiq/compare/0.0.2...0.1.0
[0.0.2]: https://github.com/sensu-plugins/sensu-plugins-sidekiq/compare/0.0.1...0.0.2
