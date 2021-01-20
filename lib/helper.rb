# Method to convert users input to match the position on the board

class Helpers
  def player_move(user_input)
    user_input.to_i - 1
  end
  
  def move(board, player_move, player)
    board[player_move] = player
  end 

  def position_taken? 
    if board[player_move] == (board[player_move] == '') || (board[player_move] == ' ') || (board[player_move] == nil)
      false
    else
      true
    end
end
