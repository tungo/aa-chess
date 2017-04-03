class Rook < Piece
  include SlidingPiece

  def initialize(board, position)
    @board = board
    @position = position
  end

  def move_dirs
    [:horizontal, :vertical]
  end

  def to_s
    "R"
  end
end
