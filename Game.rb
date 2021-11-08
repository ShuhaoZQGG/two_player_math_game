require './Player'

class Game

  attr_accessor :turn, :current_player, :player1, :player2

  def initialize
    puts 'New Game Starts!'
    puts "Player1: What's your name?"
    @player1 = Player.new(gets.chomp)
    puts "Player2: What's your name?"
    @player2 = Player.new(gets.chomp)
    puts "Welcome Player1 #{player1.name} and Player2 #{player2.name}"
    @turn = 1
    @current_player = @player1
    return @player1, @player2
  end

  def next_turn
    puts 'Next turn!'
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
    @turn += 1
  end


  def correct_answer
    puts "#{@current_player.name} your answer is correct and your remaining lives is #{@current_player.lives}"
  end
  
  def wrong_answer
    @current_player.lost_lives
    puts "#{@current_player.name} your answer is wrong and you lost 1 live, your remaining lives is #{@current_player.lives}"
  end

  def game_over
    puts "Game_over"
  end
end