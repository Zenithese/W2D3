require "card"
require "deck"
require "hand"
require "player"
require "game"

describe Card do
  subject(:card) {Card.new(10,"spades")}

  describe "#initialize" do 
    
    it "sets a number" do
      expect(card.number).to eq(10)
    end 
    
    it "sets a suit" do
      expect(card.suit).to eq("spades")
    end 

  end 

end

describe Deck do
  subject(:deck) { Deck.new }
  let(:card) { Card.new(number, suit) }
  
  describe "#initialize" do

    it "has an array of 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "has 13 unique cards from each suit" do
      ["Clubs", "Diamonds", "Hearts", "Spades"].each do |suit|
        cards = deck.cards.select { |c| c.suit == suit }
        expect(cards.count).to eq(13)
        expect(cards.uniq.count).to eq(13)
      end
    end

  end

  describe "#take_card" do
    # take_a_card  = deck.cards.shift
    it "takes a card from the top of deck" do
      # CARD = []
      # CARD << deck.cards.shift
      # deck.take_card
      acard = deck.take_card
      deck.cards.unshift(acard)
      expect(deck.take_card).to eq(acard)

      expect(deck.cards.count).to eq (51)
    end 
    # it "return the card" do 
    #   expect(deck.take_card).to eq(CARD[-1])
    # end 

  end 

  describe "#return_card(take_card)" do 

  end
  
  # describe "#shuffle" do
  #   it "reorders/shuffles the array of cards" do
  #     expect(deck.shuffle).not_to eq(deck.cards.sort)
  #   end

  

  # describe "#adds_cards" do

  #   it "adds cards to @cards array until @cards.count == 52" do
  #     [].adds_cards
  #     expect([].cards.count)to eq(52)
  #   end

  #   it "has 13 unique cards from each suit"
  #     ["Clubs", "Diamonds", "Hearts", "Spades"].each do |suit|
  #       cards = deck.cards.select { |c| c.suit == suit }
  #       expect(cards.count).to eq(13)
  #       expect(cards.uniq.count).to eq(13)
  #     end
  #   end
  
  # end
  

  # describe "#shuffle" do
  #   it "reorders/shuffles the array of cards" do
  #     expect(deck.shuffle).not_to eq(deck.cards.sort)
  #   end

      # deck_of_cards = []
    
    # ["Clubs", "Diamonds", "Hearts", "Spades"].each do |suit|
    #   (0...13).each do |num|
    #     deck_of_cards << Card.new(num, suit)
    #   end
    # end

end



