class Knight < Piece
  include SteppingPiece

  def initialize(board, position)
    @board = board
    @position = position
  end

  def move_diffs
    [
      [-1, -2],
      [-1, 2],
      [1, -2],
      [1, 2],
      [2, -1],
      [2, 1],
      [-2, -1],
      [-2, 1]
    ]
  end

  def to_s
    "N"
  end
end
