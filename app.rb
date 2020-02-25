require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  erb :index
end

get '/hello/:name' do
  @name = params['name']
  erb :hello
end


