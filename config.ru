require 'sinatra'
require 'application.rb'

root = File.expand_path( File.dirname(__FILE__) )

set :root, root
set :views, "#{root}/views"
set :public, "#{root}/public"
set :run, false
set :environment, :development
set :raise_errors, :true

run Sinatra::Application
