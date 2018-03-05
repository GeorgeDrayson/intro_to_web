require 'sinatra'

name = "Hello"

get '/' do
  name
end

get '/secret' do
  'Subscribe to Ricky'
end

get '/cat' do
  erb(:index)
end
