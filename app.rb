require_relative 'config/environment'

class App < Sinatra::Base

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do 
  erb :index
end

post '/checkout' do
 # binding.pry

@item = params[:item]
 
 
 session["item"] = "socks"
  @session = session


erb :output
end

end