require_relative 'player'
require_relative 'game'
require_relative 'question'

puts "Welcome to the Math Game!"
puts "Enter Player 1's name: "
player1 = Player.new(gets.chomp)
puts "Enter Player 2's name: "
player2 = Player.new(gets.chomp)
