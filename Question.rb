class Question
  
  attr_accessor :number_one, :number_two, :answer_by_player

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    puts "What is the output of #{@number_one} + #{@number_two}"
    @answer_by_player = gets.chomp.to_i
    @answer = number_one + number_two
  end

  def judge
    @answer == @answer_by_player
  end

end