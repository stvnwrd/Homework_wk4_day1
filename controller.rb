require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rock_paper_scissors.rb')


get '/' do
  erb(:home)
end


get '/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  game = Game.new(hand1, hand2)
  @reckoning = game.compare_hands()
  erb(:result)
end
