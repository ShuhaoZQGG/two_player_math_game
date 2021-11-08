class Game

  attr_accessor :turn

  def initialize
    @turn = 1
  end

  def next_turn
    @turn += 1
  end

end