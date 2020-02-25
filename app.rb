require 'sinatra'

get '/' do
  "Hello world!"
end

get '/hello/:name' do
  "Hello #{params['name']}, welcome to my app!"
end
