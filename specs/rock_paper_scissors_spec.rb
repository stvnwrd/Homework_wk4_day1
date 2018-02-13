require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestGame < Minitest::Test


  def test_rock_wins__rock_first
    result = Game.new("rock", "scissors")
    assert_equal("Rock Wins", result.compare_hands)
  end

  def test_rock_wins__scissors_first
    result = Game.new("scissors", "rock")
    assert_equal("Rock Wins", result.compare_hands)
  end

  def test_paper_wins__paper_first
    result = Game.new("paper", "rock")
    assert_equal("Paper Wins", result.compare_hands)
  end

  def test_paper_wins__rock_first
    result = Game.new("rock", "paper")
    assert_equal("Paper Wins", result.compare_hands)
  end

  def test_scissors_wins__scissors_first
    result = Game.new("scissors", "paper")
    assert_equal("Scissors Wins", result.compare_hands)
  end

  def test_scissors_wins__paper_first
    result = Game.new("paper", "scissors")
    assert_equal("Scissors Wins", result.compare_hands)
  end

  def test_downcase_effective__first_variable
    result = Game.new("PAPER", "scissors")
    assert_equal("Scissors Wins", result.compare_hands)
  end

  def test_downcase_effective__second_variable
    result = Game.new("paper", "SCISSORS")
    assert_equal("Scissors Wins", result.compare_hands)
  end

end
