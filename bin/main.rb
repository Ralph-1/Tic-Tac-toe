#!/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/helper'

class TicTacToe

  def initialize 
    @_board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @name = []
    @helper = Helpers.new
    @game_over = false
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

  def move_on_board(index)
    @_board[index] = @player.token
  end

  def turn_count
    counter = 0
    if @_board.include?('X')
      counter += 1
    elsif @_board.include?('O')
      counter += 1
    else
      counter
    end
    counter
  end

  def turn
    @player = @player == @name[0] ? @name[1] : @name[0]
    puts "#{@player.name}, choose a spot between 1-9"
    player_play = gets.strip.to_i
    until player_play.positive?
      puts 'Please enter a valid move'
      player_play = gets.strip.to_i
    end
    until @helper.valid_move?(@_board, player_move(player_play))
      puts "#{@player.name}, Place is already taken.Choose another number between 1-9"
      player_play = gets.strip.to_i
    end
    move_on_board(player_move(player_play))
    display_board
    if @game.won?(@_board)
      puts "Congratulations #{@player.name} you won!!!"
      @game_over = true
    elsif @helper.draw?(turn_count)
      puts 'It is a Draw!!!'
      @game_over = true
    end
  end 

 
end