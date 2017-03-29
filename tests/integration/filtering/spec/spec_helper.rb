require 'infrataster/rspec'

ENV['VAGRANT_CWD'] = File.dirname(__FILE__)
ENV['LANG'] = 'C'

Infrataster::Server.define(
  :client1,
  '192.168.21.100',
  vagrant: true
)
Infrataster::Server.define(
  :server1,
  '192.168.21.200',
  vagrant: true
)

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
