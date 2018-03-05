require 'sinatra'

name = "Hello"

get '/' do
  params[:name]
end

get '/secret' do
  'Subscribe to Ricky'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @style = 'border-style:dashed;border-color:' + params[:color].to_s
  erb(:index)
end
