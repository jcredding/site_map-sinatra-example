ENV["RACK_ENV"] ||= "development"
require 'config/application'

run TestSinatra::Application
