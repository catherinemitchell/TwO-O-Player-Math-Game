require './game'
require './player'
require './question'
 
@player_1 = Player.new("Player1")
@player_2 = Player.new("Player2")
@game = Game.new(@player_1, @player_2)
@current_player = @player_1

@game.play_game



