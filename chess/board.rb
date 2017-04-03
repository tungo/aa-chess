require_relative 'piece'

class Board
  def initialize()
    @grid = []
    2.times { @grid << setup_row_pieces }
    4.times { @grid << setup_row_null_pieces }
    2.times { @grid << setup_row_pieces }
  end

  def setup_row_null_pieces()
    Array.new(8) { NullPiece.new }
  end

  def setup_row_pieces()
    Array.new(8) { Piece.new }
  end

end
