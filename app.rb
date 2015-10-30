require 'sinatra/base'

require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new(params[:player_1_name])
    player_two = Player.new(params[:player_2_name])
    $game = Game.new(player_one, player_two)
    redirect :play
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack @game.player_2
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
