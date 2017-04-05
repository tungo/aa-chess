class HumanPlayer
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def play_turn

    old_val = 1
    new_val = 2


    loop do
      @display.render

      puts "It is #{@name}'s turn"
      puts "Please choose a piece to move from"

      new_val = @display.cursor.get_input
      break if old_val == new_val
      old_val = new_val
    end

    start_pos = old_val


    old_val = 1
    new_val = 2
    loop do
      @display.render
      puts "You chose #{@board[start_pos].symbol} at #{start_pos}"
      puts "Please choose a position to move to"

      new_val = @display.cursor.get_input
      break if old_val == new_val
      old_val = new_val
    end

    end_pos = old_val

    [start_pos, end_pos]
  end

  def add_board(board)
    @board = board
    @display = Display.new(@board)
  end
end
