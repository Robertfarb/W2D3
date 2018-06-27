class Board
  attr_accessor :towers
  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end
  
  def move(from_tower, to_tower)
    if valid_move?(from_tower, to_tower)
      disk = towers[from_tower].pop
      towers[to_tower].push(disk)
    end 
  end
  
  def valid_move?(from_tower, to_tower)
    return false unless from_tower.between?(0, 2) || to_tower.between?(0, 2)
    return false if towers[from_tower].empty?
    return true if towers[to_tower].empty?
    towers[from_tower].last < towers[to_tower].last
  end
  
  def won?
    return true if towers[1] == [3, 2, 1] || towers[2] == [3, 2, 1]
    false
  end
  
  def render
    p towers
  end
end
