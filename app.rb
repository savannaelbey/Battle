require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player1_name = Player.new(params[:player1_name])
    $player2_name = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1_name.name
    @player2_name = $player2_name.name

    erb :play
  end

  get '/attack' do
    
    @player_1 = $player1_name
    @player_2 = $player2_name
    @player_1.attack(@player_2)
    erb :attack
  end


  run! if app_file == $0
end
