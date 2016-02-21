require 'rspec/expectations'
require 'httparty'
require 'cucumber'
require 'settingslogic'

Dir[File.dirname(__FILE__) + '/../helpers/*.rb'].each { |f| require f }

include RSpec::Expectations
include ServiceHelpers

ENV['ENV'] ||= 'test'
