class Knight < Piece
  include SteppingPiece

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

  def symbol
    "♘"
  end
end
