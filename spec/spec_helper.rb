require 'bundler/setup'
Bundler.setup(:default, :development)

require 'active_record'

RSpec.configure do |config|
  ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

  config.order = :random
  config.disable_monkey_patching!
end
