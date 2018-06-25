# dredd_hooks.rb
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('config/environment', __dir__)
require 'dredd_hooks/methods'
require 'database_cleaner'
# rubocop:disable MixinUsage
include DreddHooks::Methods
# rubocop:enable MixinUsage
before_all do |_|
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean_with(:truncation)
end
after_each do |_|
  DatabaseCleaner.clean
end
before 'Message > Show single message > Example 2' do |_|
  Message.create!(id: 1, content: "Some message")
end
