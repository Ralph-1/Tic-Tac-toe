#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockNesting
puts 'Welcome to Tic Tac Toe'
puts 'A game created by Ralph and Prerna'

# A method to register the player names
def player_log(player_name)
  puts "please enter #{player_name} names. "
  player_name = gets.chomp

  while player_name.empty?
    puts 'Enter a valid name'
    player_name = gets.chomp
  end

  player_nameplayer_name
end

puts 'player one please enter your name!'
player_x = player_log('X')
puts ''
puts 'player two enter your name'
player_y = player_log('Y')

while player_x.casecmp(player_y.downcase).zero?
  puts 'players should have different names'
  puts ''
  puts 'player_y please enter a different name'
  player_y = player_log(y)
end

puts "Player #{player_x} will be 'X' and player #{player_y} will be 'O'"

# Game instructions

system('clear')
puts "You will have a 3x3 board and player 1 will have the first turn\n"
puts "When it's your turn enter the number of the square that you want to play (between 1 and 9)"
puts "Don't choose squares that are already occupied\n\n"
puts '    -------------'
puts '    | 1 | 2 | 3 |'
puts '    -------------'
puts '    | 4 | 5 | 6 |'
puts '    -------------'
puts '    | 7 | 8 | 9 |'
puts '    -------------'
puts "\nThe winner is the first one to form a line with 3 symbols vertically, horizontally or diagonally\n\n"
puts 'Press Enter to continue'

winning_combinations = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]

# After setting up the board the game will then begin

winner = false

# The board will be shown for the players
board = Board.new
board.display_board
game_over = false
swap = 0
utilties = Utilties.new

until game_over
  if turn.even?
    puts 'Player 1-enter any number from 1 to 9'
    player_x_move = gets.chomp
    player_x_input = utilties.input_to_index(player_x_move)
    until utilties.valid_move?(board.board, player_x_input)
      puts 'Move is not valid. Make a valid input'
      player_x_move = gets.chomp
      player_x_input = utilties.input_to_index(player_x_move)
      break if utilties.valid_move?(board.board, player1_input)
    end
    board.board[utilties.input_to_index(player_x_move)] = player_x_move

  else
    puts 'Player 2-enter any number from 1 to 9'
    player_y_move = gets.chomp
    player_y_input = utilties.input_to_index(player_y_move)
    until utilties.valid_move?(board.board, player_y_input)
      puts 'Move is not valid. Make a valid input'
      player_y_move = gets.chomp
      player_y_input = utilties.input_to_index(player_y_move)
      break if utilties.valid_move?(board.board, player_y_input)
    end
    board.board[utilties.input_to_index(player_y_move)] = player_y_move

  end
  board.display_board
  swap += 1

  if board.board.include?(winning_combinations)
    puts "congratulations #{player_log} one won"
    game_over = true
    break
  elsif turn >= 9 && !winner
    puts 'the game is a draw'
    game_over = true
    break
  end

end
# rubocop:enable Metrics/BlockNesting
