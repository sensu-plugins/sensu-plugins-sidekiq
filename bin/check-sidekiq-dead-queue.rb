#! /usr/bin/env ruby
# encoding: UTF-8

require 'sensu-plugin/check/cli'
require 'open-uri'
require 'json'

# DESCRIPTION:
#   Check that the sidekiq dead queue size is 0 using the sidekiq
#   stats JSON page under
#   /sidekiq/dashboard/stats
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   gem: open-uri
#   gem: json
#
# LICENSE:
#   by https://github.com/bennythejudge
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
class SidekiqCheck < Sensu::Plugin::Check::CLI
  option :url,
         short: '-u URL',
         long: '--url URL',
         description: 'Url to query',
         required: true

  option :auth,
         short: '-a USER:PASSWORD',
         long: '--auth USER:PASSWORD',
         description: 'Basic auth credentials if you need them',
         proc: proc { |auth| auth.split(':') }

  def run
    begin
      stats = JSON.parse(
        if config[:auth]
          open(config[:url], http_basic_authentication: config[:auth]).read
        else
          open(config[:url]).read
        end
      )
    rescue => error
      unknown "Could not load Sidekiq stats from #{config[:url]}. Error: #{error}"
    end
    dead_queue_size = stats['sidekiq']['dead']
    if !dead_queue_size.zero?
      entry_or_entries =  dead_queue_size > 1 ? 'entries' : 'entry'
      critical 'dead queue not empty (' + dead_queue_size.to_s + ' ' + entry_or_entries + ')'
    else
      ok 'sidekiq dead queue is empty'
    end
  end
end
