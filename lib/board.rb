class Board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
 
  end

  def display_board 
    puts "#{board[0]}, #{board[1]}, #{board[2]}"
    puts separator = '-----------'
    puts "#{board[3]}, #{board[4]}, #{board[5]}"
    puts separator
    puts "#{board[6]}, #{board[7]}, #{board[8]}"
  end

  def player_move(user_input)
    user_input.to_i - 1
  end

  def move(board, player_move, player)
    if 
  end 
end