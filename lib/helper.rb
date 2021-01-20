# Method to convert users input to match the position on the board
class 
  winning_cases = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze

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

  def won(board)
    winning_cases.each do |case|
      board[case[0]] == board[case[1] && board[case[1]] == board[case[2]] && board[case[0]] != ' '
  end

  def draw?(turn)
    turn >= 9
  end

  def over?(board, turn)
    won?(board) || draw?(board)
  end
end