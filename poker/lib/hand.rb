require_relative 'card'
require_relative 'deck'

class Hand
  SUITS = [:d, :c, :h, :s]
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  attr_accessor :five_cards
  
  def initialize(five_cards)
    @five_cards = five_cards
  end
  
  def high_card
  end
  
  def pair
    combo_hash = hand_hash
    pair = []
    combo_hash.each do |key, count|
      if count == 2 && VALUES.include?(key)
        pair << key
      end
    end
    if pair.count > 1
      return false 
    else 
      pair.first
    end
  end
  
  def two_pair
    combo_hash = hand_hash
    pair = []
    combo_hash.each do |key, count|
      if count == 2 && VALUES.include?(key)
        pair << key
      end
    end
    
    if pair.count > 1
      return pair 
    else 
      return false
    end
  end
  
  def three_of_a_kind
  end
  
  def straight
  end
  
  def flush
  end
  
  def full_house
  end
  
  def four_of_a_kind
  end
  
  def royal_flush
  end
  
  def hand_hash
    hash = Hash.new(0)
    @five_cards.each do |card|
      hash[card.value] += 1
      hash[card.suit] += 1
    end
    hash
  end
  
end