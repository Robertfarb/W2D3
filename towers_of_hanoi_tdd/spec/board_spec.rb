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
    
    it "should allow a smaller disk to be placed onto a larger disk" do
      expect(board2.valid_move?(2, 1)).to be true
    end
    
    it "should not allow a move that's out of range" do
      expect(board2.valid_move?(-1, 20)).to be false
    end
  end
  
  describe "#move" do
    it "should move disk to specified tower" do
      board.move(0, 1)
      expect(board.towers[1]).to eq([1])
    end
    
    it "should remove a disk from tower_from" do
      board.move(0, 2)
      expect(board.towers[0]).to eq([3, 2])
    end
  end
  
  describe "#won?" do
    subject(:board3) {board3 = Board.new([[], [], [3, 2, 1]])}
    it "should return true if pegs 3 has the full tower" do
      expect(board3.won?).to be true
    end
    
    it "should return true if pegs 2 has the full tower" do
      board4 = Board.new([[], [3, 2, 1], []])
      expect(board4.won?).to be true
    end
    
  
  end
end