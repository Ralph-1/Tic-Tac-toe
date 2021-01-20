# Method to convert users input to match the position on the board
class Helpers
  def position_taken?(board, index) 
    if board[index] == (board[index] == '') || (board[index] == ' ') || (board[index] == nil)
      false
    else
      true
    end
  end

  def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index)
  end

end