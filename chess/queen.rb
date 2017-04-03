class Queen < Piece
  include SlidingPiece

  def initialize(board, position)
    @board = board
    @position = position
  end

  def move_dirs
    [:diagonal, :horizontal, :vertical]
  end

  def to_s
    "Q"
  end
end
