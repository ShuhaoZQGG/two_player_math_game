require './Player'
require './Game'
require './Question'


game = Game.new
player1 = game.player1
player2 = game.player2



while player1.lives > 0 && player2.lives > 0
  question = Question.new
  if question.judge
    game.correct_answer
    game.next_turn
  else
    game.wrong_answer
    game.next_turn
  end
end

game.game_over