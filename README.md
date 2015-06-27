## Sensu-Plugins-sidekiq

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-sidekiq.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-sidekiq)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-sidekiq.svg)](http://badge.fury.io/rb/sensu-plugins-sidekiq)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-sidekiq.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-sidekiq)
[![Codeship Status for sensu-plugins/sensu-plugins-sidekiq](https://codeship.com/projects/807ab0e0-edcd-0132-0ba1-1efd3f886df2/status?branch=master)](https://codeship.com/projects/84126)

## Functionality

Check varius metrics and checks for Sidekiq. Requires [sidekiq-monitor-stats](https://github.com/harvesthq/sidekiq-monitor-stats)
running on your application. Pass the `--url URL` option with the url to your monitor stats. Both scripts also accept a
`--auth USER:PASSWORD` option in case the monitor stats url sits behind basic authorization.

### check-sidekiq.rb

Uses the maximum latency to figure out when to raise warnings. The latency is the time a job has been waiting in the queue (without
being processed). It's generally a good metric to know when there's trouble with Sidekiq. There are some options you can pass to this
script:

* `--warn SECONDS`: Warn after job has been SECONDS seconds in a queue. The default is 120.
* `--crit SECONDS`: Critical after job has been SECONDS seconds in a queue. The default is 300.

### sidekiq-metrics.rb

Generates total concurrency (`concurrency`), total busy (`busy`) and maximum latency (`latency`) metrics for your sidekiq. A graph of
busy vs. concurrency is specially useful for capacity planning. The latency metric should let you know if something is wrong (or there
are spikes that don't trigger a warning or a critical). Accepts an `--scheme SCHEME` option to know what scheme to append to the
metrics (the default is `sidekiq`).

## Files
 * bin/check-sidekiq.rb
 * bin/sidekiq-metris.rb

## Usage

## Installation

[Installation and Setup](https://github.com/sensu-plugins/documentation/blob/master/user_docs/installation_instructions.md)

## Notes
