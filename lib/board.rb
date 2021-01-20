class Board
  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
 
  end
# Method to display the board
  def display_board 
    puts "#{board[0]}, #{board[1]}, #{board[2]}"
    puts separator = '-----------'
    puts "#{board[3]}, #{board[4]}, #{board[5]}"
    puts separator
    puts "#{board[6]}, #{board[7]}, #{board[8]}"
  end

# Method to convert users input to match the position on the board
def player_move(user_input)
  user_input.to_i - 1
end

def move(board, player_move, player)
  
end 
end