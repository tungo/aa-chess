require_relative 'display'
require_relative 'humanplayer'

class Game
  def initialize(player1, player2)
    @board = Board.new
    @player1 = player1
    @player2 = player2
    @player1.add_board(@board)
    @player2.add_board(@board)
    @current_player = @player1
  end

  def play
    until @board.checkmate?(:red) || @board.checkmate?(:blue)
      start_pos, end_pos = @current_player.play_turn
      
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Game.new(HumanPlayer.new("Jin"), HumanPlayer.new("Tu"))
  game.play

  # board = Board.new
  # display = Display.new(board)
  #
  # old_val = 1
  # new_val = 2
  #
  # loop do
  #   display.render
  #   new_val = display.cursor.get_input
  #   break if old_val == new_val
  #
  #   old_val = new_val
  # end
  #
  # p old_val

  # board.move_piece([1,0], [2,0])
  # # pieces = board.pieces_of_color(:red)
  # # rook = pieces[8]
  # board.move_piece([1, 4], [3,4])
  # board.move_piece([0, 4], [1,4])
  # board.move_piece([1, 4], [2,4])
  # board.move_piece([2, 4], [3,5])
  # board.move_piece([3, 5], [4,5])
  # # board.move_piece([6, 3], [5,3])
  # # board.move_piece([7, 3], [6,3])
  # # queen = board[[6, 3]]
  # board.move_piece([6, 6], [5,6])

  # display.render
end

# binding.pry
