require_relative 'piece'

class Board
  def initialize()
    @grid = []
    setup_grid
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise("Wrong start position, no piece at this position.")
    elsif self[end_pos].is_a?(Piece)
      raise("Wrong end position, there is a piece at this position")
    end

    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.new
  end

  def setup_grid
    2.times { @grid << Array.new(8) { Piece.new } }
    4.times { @grid << Array.new(8) { NullPiece.new } }
    2.times { @grid << Array.new(8) { Piece.new } }
  end

end
