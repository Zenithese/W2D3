require_relative 'card'

class Deck

  # CARD = []

  attr_reader :cards

  def initialize
    @cards = []

    ["Clubs", "Diamonds", "Hearts", "Spades"].each do |suit|
      (0...13).each do |num|
        @cards << Card.new(num, suit)
      end
    end

  end

  def take_card 
    @cards.shift
    # CARD[-1]
  end
end