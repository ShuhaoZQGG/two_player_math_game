require './Player'
require './Game'

john =  Player.new("John")

puts john.name
puts john.lives
john.lost_lives
puts john.lives

game = Game.new
puts game.turn

game.next_turn
puts game.turn