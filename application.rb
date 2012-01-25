require 'sinatra'

get '/stylesheets/application.css' do
  sass :'../stylesheets/application'
end

get '/' do
  slim :about
end

get '/contributors' do
  slim :contributors
end

get '/credit' do
  slim :credit
end

get '/suggestions' do
  slim :suggestions
end

get '/award' do
  slim :award
end

get '/donations' do
  slim :donations
end

get '/blog' do
  slim :blog
end
