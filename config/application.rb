require File.expand_path('../boot', __FILE__)

require 'pathname'

require 'sinatra/base'
RACK_ENV = ENV["RACK_ENV"] ||= "development"
APP_ROOT = Pathname.new(File.expand_path('../..', __FILE__))

Bundler.require(:default, RACK_ENV.to_sym)

module TestSinatra
  class Application < Sinatra::Base
    register Mustache::Sinatra
    
    set :env,   RACK_ENV.to_sym
    set :root,  APP_ROOT

    set :public,    APP_ROOT.join('public')

    set :mustache, {
      :views     => APP_ROOT.join('app', 'views').to_s
      :templates => APP_ROOT.join('app', 'templates').to_s
    }

    set :routes,  APP_ROOT.join('app', 'routes')
    set :helpers, APP_ROOT.join('app', 'helpers')

    #TODO implement in app first, consider not adding to gem
    # use register instead ???
    #include SiteMap::Sinatra::Filters
    #TODO implement in app first, consider not adding to gem
    # use register instead ???
    #include SiteMap::Sinatra::Helpers
  end
end

require TestSinatra::Application.routes
require TestSinatra::Application.helpers
