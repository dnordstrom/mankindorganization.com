require 'sinatra'

get '/stylesheets/application.css' do
  sass :'../stylesheets/application'
end

get '/' do
  slim :home
end
