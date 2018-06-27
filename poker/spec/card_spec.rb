require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:ten_of_hearts) { Card.new(10, :hearts) }
  describe "#initialize" do
    it "should initialize with given value and suit" do
      expect(ten_of_hearts.value).to eq(10)
      expect(ten_of_hearts.suit).to eq(:hearts)
    end
  end
end