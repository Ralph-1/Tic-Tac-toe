#!/usr/bin/env ruby

puts 'Welcome to Tic Tac Toe'
puts 'Please Enter Your Name(First Player): '
player1 = gets.chomp
# save the name in player1 variable
# after entering the name we will assign the sign to player
puts "#{player1} your symbol is X "
puts 'Please Enter Your Name(Second Player): '
player2 = gets.chomp
# save the name in player2 variable
# after entering the name we will assign the sign to player
puts "#{player2} your symbol is O "

puts '-------------'
puts '| 1 | 2 | 3 |'
puts '-------------'
puts '| 4 | 5 | 6 |'
puts '-------------'
puts '| 7 | 8 | 9 |'
puts '-------------'

puts "It is your move #{player1}, Select the position"
# we will save the position and sign
# we will update the board and display it
# we will check the conditions

puts "It is your move #{player2}, Select the position"
# we will save the position and sign
# we will update the board and display it
# we will check the conditions

puts "player 'e.g player1' is the winner! or the game is draw"
puts 'do you want to rematch(y/n)? '
rematch = gets.chomp
puts rematch
# proceed according to the user input either to rematch or terminate the game
