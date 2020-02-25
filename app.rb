require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello world!"
end

get '/hello/:name' do
  "Hello #{params['name']}, welcome to my app!"
end


