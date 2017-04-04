require 'singleton'

class Piece
  attr_reader :color, :position, :board

  def initialize(board, position, color)
    @board = board
    @position = position
    @color = color
  end

  def symbol
    "P"
  end

  def inspect()
    "#{self.class} - #{position} - #{color}"
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
