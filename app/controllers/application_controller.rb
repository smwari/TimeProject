require './config/environment'
require './app/controllers/application_controller'
require './app/models/sendmessage'


class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end


  get '/setup' do
    "GO AWAY"
    erb :result
  end

  post '/setup' do
    puts params
      
    @phonenumber = params["number"]
    @msg = params["message"]
    @date = params["date"]
    @time = params["time"]
    sendmsg(@msg, "9176786813", @date)
    erb :result
  end
end


  
  
  
  
 



