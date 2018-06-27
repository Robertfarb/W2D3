require 'array'
require 'rspec'

RSpec.describe Array do
  subject(:array) { array = [1, 2, 3, 4, 1, 2, 3, 4] }
  
  describe "#my_uniq" do
    it "should remove duplicates from an array" do
      expect(array.my_uniq).to eq(array.uniq)
    end
    
    it "should not receive uniq" do
      expect(array).not_to receive(:uniq)
      array.my_uniq
    end
  end
  
  describe "two_sum" do
    subject(:array) { array = [1, -1, 0, 0] }
    
    it "should return all pairs of indices that sum to 0" do
      expect(array.two_sum).to eq([[0, 1], [2, 3]])
    end
    
    it "should not return pairs of indices that are the same" do
      expect(array.two_sum).not_to include([[3, 3]])
      expect(array.two_sum).not_to include([[2, 2]])
    end
  end
  
  describe "my_transpose" do
    subject(:array) { array = [[1, 2], [3, 4]] }
    subject(:array2) { array2 = [
                                [0, 1, 2],
                                [3, 4, 5],
                                [6, 7, 8]] 
                              }
                              
    it "should transpose the given array" do
      expect(array.my_transpose).to eq([[1, 3], [2, 4]])
      expect(array2.my_transpose).to eq([[0, 3, 6],
                                         [1, 4, 7],
                                         [2, 5, 8]])
    end
    
    it "should not receive transpose" do
      expect(array2).not_to receive(:transpose)
      array2.my_transpose
    end
  end
  
  describe "stock_picker" do
    subject(:array) { array = [1, 2, 3, 4, 5] }
    subject(:array2) { array2 = [6, 2, 3, 4, 5] }
    
    it "should return the pair of days that are most profitable" do
      expect(array.stock_picker).to eq([3, 4])
    end
    
    it "should return a pair of days that aren't next to eachother" do
      expect(array2.stock_picker).to eq([0, 4])
    end
    
    it "should return a pair of days that are different" do
      pair_days = array.stock_picker
      expect(pair_days[0]).not_to eq(pair_days[1])
    end    
  end
    
end