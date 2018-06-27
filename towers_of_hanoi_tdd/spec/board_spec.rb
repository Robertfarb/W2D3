require 'rspec'
require 'game'
require 'board'

RSpec.describe Board do
  subject(:board) {board = Board.new}
  describe "#initialize" do
    it "should initialize with three arrays" do
      expect(board.towers.length).to eq(3)
    end
    
    it "should start with all three towers on first peg" do
      expect(board.towers[0]).to eq([3, 2, 1])
    end
    
    it "should initialize pegs 2 and 3 to be empty" do
      expect(board.towers[1]).to be_empty
      expect(board.towers[2]).to be_empty
    end
  end
  
  describe "#valid_move?" do
    subject(:board2) {board2 = Board.new([[3], [2], [1]])}
    
    it "should not allow a larger disk to placed onto a smaller" do
      expect(board2.valid_move?(0, 1)).to be false
    end
    
    it "should not allow a move from an empty peg" do
      expect(board.valid_move?(2, 3)).to be false
    end
  end
end