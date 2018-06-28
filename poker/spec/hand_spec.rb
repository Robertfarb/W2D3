require 'rspec'
require 'deck'
require 'hand'
require 'card'

RSpec.describe Hand do
  let(:card) { double("card", :value => "2", :suit => :d) }
  let(:card1) { double("card1", :value => "5", :suit => :h) }
  let(:card2) { double("card2", :value => "3", :suit => :s) }
  subject(:hand) {hand = Hand.new([card, card, card, card, card])}
  subject(:hand2) {hand2 = Hand.new([card, card2, card1, card2, card])}
  
  describe "#initialize" do
    it "should start with a hand of five passed cards" do
      expect(hand.five_cards).to eq([card, card, card, card, card]) 
    end
  end
  
  describe "#hand_hash" do
    it "should return a hash with suits and values as keys, count as values" do
      expect(hand.hand_hash).to eq({ "2" => 5, :d => 5 })
      expect(hand2.hand_hash).to eq({ "2" => 2, :d => 2, "3" => 2, :s => 2, "5" => 1, :h => 1})
    end
  end
  
  describe "#pair" do
    it "should return false if there are more than one pair" do
      expect(hand2.pair).to be false
    end
  end
  
end