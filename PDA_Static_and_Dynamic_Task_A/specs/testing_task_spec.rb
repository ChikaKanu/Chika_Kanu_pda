require("minitest/autorun")
require('minitest/rg')
require_relative("../testing_task_2.rb")

class Testing_task_2Test < MiniTest::Test

  def setup
    @card_1 = Card.new("Two", 2)
    @card_2 = Card.new("Three", 3)
    @card_game = CardGame.new()
  end

  def test_card_has_value
    assert_equal(2, @card_1.value())
  end

  def test_check_for_Ace_negative
    assert_equal(false, @card_game.check_for_Ace(@card_1))
  end

  def test_check_for_Ace_positive
    card = Card.new("ACE", 1)
    assert_equal(true, @card_game.check_for_Ace(card))
  end

  def test_highest_card
    assert_equal(@card_2, @card_game.highest_card(@card_1, @card_2))
  end

  def test_highest_card_reverse_card
    assert_equal("Three", @card_game.highest_card(@card_2, @card_1))
  end

  def test_cards_total
    cards = [@card_1, @card_2]
    assert_equal("You have a total of 5", @card_game.cards_total(cards))
  end

end
