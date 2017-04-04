require 'singleton'

class Piece
  attr_reader :color, :position, :board

  def initialize(board, position, color)
    @board = board
    @position = position
    @color = color
  end

  def valid_moves

  end

  def symbol
    "P"
  end

  # def inspect
  #   "#{self.class} - #{position} - #{color}"
  # end

  private

  def move_into_check?(end_pos)
    board_clone = @board.clone
    board_clone.move_piece(@position, end_pos)
    board_clone.in_check?(@color)
  end
end

class NullPiece < Piece
  include Singleton

  def initialize
    @color = :black
  end

  def moves
    []
  end

  def symbol
    "_"
  end
end
