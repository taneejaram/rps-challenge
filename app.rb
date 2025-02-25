require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    erb :play
    redirect 'play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @weapon = params[:weapon]
    erb :play
  end

  get '/result' do
    puts "You chose a weapon!"
  end

  run! if app_file == $0
end
