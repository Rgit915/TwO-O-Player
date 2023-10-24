require_relative 'player'
require_relative 'game'
require_relative 'question'

puts "Welcome to the Math Game!"
puts "Enter Player 1's name: "
player1 = Player.new(UIHandler.get_user_input(""))
puts "Enter Player 2's name: "
player2 = Player.new(UIHandler.get_user_input(""))
game = Game.new(player1, player2)

loop do
  question = Question.new
  question.ask_question(game.current_player.name)
input = gets.chomp.to_i

if question.is_correct?(input)
  puts "Correct!"
else
  puts "Seriously! No!"
  game.current_player.reduce_life
end

puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
if player1.is_alive? && player2.is_alive?
  game.current_player = (game.current_player == player1) ? player2 : player1
else
  if player1.is_alive?
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
  else
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
  end
  puts "----- GAME OVER ----"
  puts "Goodbye!"
  break
end
end