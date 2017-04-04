class King < Piece
  include SteppingPiece

  def initialize(board, position)
    @board = board
    @position = position
  end

  def move_diffs
    [
      [-1, 0],
      [-1, 1],
      [-1, -1],
      [0, 1],
      [0, -1],
      [1, 0],
      [1, 1],
      [1, -1]
    ]
  end

  def to_s
    "K"
  end
end
