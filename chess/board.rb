require_relative 'piece'

class Board
  attr_reader :grid

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
    elsif is_piece?(end_pos)
      raise("Wrong end position, there is a piece at this position")
    end

    self[end_pos] = self[start_pos]
    self[start_pos] = NullPiece.instance
  end

  def in_bounds?(pos)
    pos.all? { |ele| ele.between?(0, 7) }
  end

  def is_piece?(pos)
    !self[pos].is_a?(NullPiece)
  end

  private

  def setup_grid
    @grid << [
      Rook.new(@board, [0,0], :blue),
      Knight.new(@board, [0,1], :blue),
      Bishop.new(@board, [0,2], :blue),
      Queen.new(@board, [0,3], :blue),
      King.new(@board, [0,4], :blue),
      Bishop.new(@board, [0,5], :blue),
      Knight.new(@board, [0,6], :blue),
      Rook.new(@board, [0,7], :blue)
    ]

    @grid << [
      Pawn.new(@board, [1,0], :blue),
      Pawn.new(@board, [1,1], :blue),
      Pawn.new(@board, [1,2], :blue),
      Pawn.new(@board, [1,3], :blue),
      Pawn.new(@board, [1,4], :blue),
      Pawn.new(@board, [1,5], :blue),
      Pawn.new(@board, [1,6], :blue),
      Pawn.new(@board, [1,7], :blue)
    ]

    4.times { @grid << Array.new(8) { NullPiece.instance } }

    @grid << [
      Pawn.new(@board, [6,0], :red),
      Pawn.new(@board, [6,1], :red),
      Pawn.new(@board, [6,2], :red),
      Pawn.new(@board, [6,3], :red),
      Pawn.new(@board, [6,4], :red),
      Pawn.new(@board, [6,5], :red),
      Pawn.new(@board, [6,6], :red),
      Pawn.new(@board, [6,7], :red)
    ]

    @grid << [
      Rook.new(@board, [7,0], :red),
      Knight.new(@board, [7,1], :red),
      Bishop.new(@board, [7,2], :red),
      Queen.new(@board, [7,3], :red),
      King.new(@board, [7,4], :red),
      Bishop.new(@board, [7,5], :red),
      Knight.new(@board, [7,6], :red),
      Rook.new(@board, [7,7], :red)
    ]
  end

end
