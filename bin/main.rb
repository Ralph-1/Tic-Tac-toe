#!/usr/bin/env ruby

require_relative '../lib/player'
require_relative '../lib/board'
require_relative '../lib/helper'

class TicTacToe

  def initialize 
    @_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @name = []
    @helper = Helpers.new
  end

  def start
    puts 'Welcome to TIC-TAC-TOE'
    sleep 1
    puts 'A simple game developed by Ralph and Prerna'
    sleep 1
  end
  
  def display_board 
    puts "#{@_board[0]}, #{@_board[1]}, #{@_board[2]}"
    puts separator = '-----------'
    puts "#{@_board[3]}, #{@_board[4]}, #{@_board[5]}"
    puts separator
    puts "#{@_board[6]}, #{@_board[7]}, #{@_board[8]}"
  end

  def player_move(user_input)
    user_input.to_i - 1
  end

  def move(board, player_move, player)
    board[player_move] = player
  end 

 
end