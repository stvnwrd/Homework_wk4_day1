class Game

  attr_accessor :hand1, :hand2

  def initialize(hand1, hand2)
    @hand1 = hand1.downcase
    @hand2 = hand2.downcase
  end

  def compare_hands
    return 'Rock Wins' if (@hand1 == 'rock' && @hand2 == 'scissors') || (@hand2 == 'rock' && @hand1 == 'scissors')
    return 'Paper Wins' if (@hand1 == 'rock' && @hand2 == 'paper') || (@hand2 == 'rock' && @hand1 == 'paper')
    return 'Scissors Wins' if (@hand1 == 'paper' && @hand2 == 'scissors') || (@hand2 == 'paper' && @hand1 == 'scissors')
  end

end
