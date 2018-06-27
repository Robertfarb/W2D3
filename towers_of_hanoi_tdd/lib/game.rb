require_relative 'board'

class Game
  attr_reader :board, :player
  
  def initialize(player = 'Bob', board)
    @player = player
    @board = board
  end
  
  def play
    until board.won?
      board.render
      move = get_move
      board.move(move.first, move.last)
    end
  end
  
  def get_move
    puts "Please choose a move (Ex. 2, 1)"
    move = gets.chomp
    move_arr = move.split(", ").map(&:to_i)
    return move_arr
  end
end


if __FILE__ ==  $PROGRAM_NAME
  board = Board.new
  game = Game.new("Garbo", board)
  game.play
end 
