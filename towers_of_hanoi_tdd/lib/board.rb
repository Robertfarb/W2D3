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
    return false if towers[from_tower].empty?
    return true if towers[to_tower].empty?
    towers[from_tower].last < towers[to_tower].last
  end
end

#valid_move?
#move
#won?
#initialize
#render