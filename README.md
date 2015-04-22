## Sensu-Plugins-sidekiq

[![Build Status](https://travis-ci.org/sensu-plugins/sensu-plugins-sidekiq.svg?branch=master)](https://travis-ci.org/sensu-plugins/sensu-plugins-sidekiq)
[![Gem Version](https://badge.fury.io/rb/sensu-plugins-sidekiq.svg)](http://badge.fury.io/rb/sensu-plugins-sidekiq)
[![Code Climate](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq/badges/gpa.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq)
[![Test Coverage](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq/badges/coverage.svg)](https://codeclimate.com/github/sensu-plugins/sensu-plugins-sidekiq)
[![Dependency Status](https://gemnasium.com/sensu-plugins/sensu-plugins-sidekiq.svg)](https://gemnasium.com/sensu-plugins/sensu-plugins-sidekiq)

## Functionality

## Files
 *
 *
 *
 *

## Usage

## Installation

Add the public key (if you haven’t already) as a trusted certificate

```
gem cert --add <(curl -Ls https://raw.githubusercontent.com/sensu-plugins/sensu-plugins.github.io/master/certs/sensu-plugins.pem)
gem install sensu-plugins-sidekiq -P MediumSecurity
```

You can also download the key from /certs/ within each repository.

#### Rubygems

`gem install sensu-plugins-sidekiq`

#### Bundler

Add *sensu-plugins-sensu-plugins-sidekiq* to your Gemfile and run `bundle install` or `bundle update`

#### Chef

Using the Sensu **sensu_gem** LWRP
```
sensu_gem 'sensu-plugins-sidekiq' do
  options('--prerelease')
  version '0.0.1'
end
```

Using the Chef **gem_package** resource
```
gem_package 'sensu-plugins-sidekiq' do
  options('--prerelease')
  version '0.0.1'
end
```

## Notes
