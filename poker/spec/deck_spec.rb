require 'rspec'
require 'deck'
require 'card'

RSpec.describe Deck do
  subject(:deck) { deck = Deck.new }
  
  describe "#initialize" do
    it "should initialize an array with a deck of 52 cards" do
      expect(deck.card_deck.length).to eq(52)
    end
    
    it "should initialize with the smallest card as a 2 of diamonds" do
      expect(deck.card_deck.first.value).to eq("2")
      expect(deck.card_deck.first.suit).to eq(:d)
    end
    
    it "should initialize a deck with only card objects" do
      expect(deck.card_deck.all? {|card| card.is_a?(Card)}).to be true
    end
  end
end