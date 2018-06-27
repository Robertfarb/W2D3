require_relative 'card'

class Deck
  SUITS = [:d, :c, :h, :s]
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  attr_accessor :card_deck
  
  def initialize
    @card_deck = Deck.populate
  end
  
  def self.populate
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(value, suit)
      end
    end
    
    deck
  end
  
end

if __FILE__ == $PROGRAM_NAME
  deck1 = Deck.new
  p deck1.card_deck
end