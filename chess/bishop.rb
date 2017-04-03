class Bishop < Piece
  include SlidingPiece

  def initialize(board, position)
    @board = board
    @position = position
  end

  def move_dirs
    [:diagonal]
  end

  def to_s
    "B"
  end
end
