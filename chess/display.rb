require 'pry'
require 'byebug'

require "colorize"
require_relative "board"
require_relative "cursor"
require_relative "all_pieces"

class Display
  attr_reader :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    system('clear')
    print "  "
    8.times { |i| print "#{i} " }
    puts ''

    @board.grid.each_with_index do |row, row_idx|
      print "#{row_idx} "
      row.each_with_index do |piece, col_idx|
        current_pos = [row_idx, col_idx]

        if current_pos == @cursor.cursor_pos
          print piece.symbol.on_white.blink
        else
          print piece.symbol.colorize(piece.color)
        end

        print ' '
      end

      puts ''
    end

    nil

  end
end


if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)
  # loop do
    display.render
    # display.cursor.get_input
  # end

  board.move_piece([1,0], [2,0])
  # pieces = board.pieces_of_color(:red)
  # rook = pieces[8]
  board.move_piece([1, 4], [3,4])
  board.move_piece([0, 4], [1,4])
  board.move_piece([1, 4], [2,4])
  board.move_piece([2, 4], [3,5])
  board.move_piece([3, 5], [4,5])
  # board.move_piece([6, 3], [5,3])
  # board.move_piece([7, 3], [6,3])
  # queen = board[[6, 3]]
  board.move_piece([6, 6], [5,6])

  display.render
end

binding.pry
