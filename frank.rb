require 'rubygems'
require 'sinatra'

# Define not_found route if we want to avoid display the default
# not_found do
#   halt 404, 'page not found!'
# end

# Begin GET routes
get '/' do
  erb :home
end

get '/about' do
  "Frank is the man, what more do you need to know?"
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

get '/form' do
  #load embedded ruby file from /views
  erb :form
end

get '/hello/:name/:city' do
  "Hello there, #{params[:name].capitalize} from #{params[:city]}."
end

get '/more/*' do 
  #display all params passed to route
  params[:splat]
end

get '/reverse' do
  erb :reverse
end
#End GET routes

#Begin POST routes
post '/form' do
  "You said '#{params[:message]}'"
end

post '/reverse' do
  params[:secret].reverse
end
#End POST routes