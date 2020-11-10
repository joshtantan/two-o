require "pp"
require "./players"
require "./questions"

player1 = Player.new(true)
player2 = Player.new(false)

while (player1.lives > 0 && player2.lives > 0)
  puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  puts "----- NEW TURN -----"

  if player1.turn
    question = Question.new
    print "Player 1: "
    puts question.prompt
    print "> "
    answer = gets.chomp.to_i

    if answer == question.answer
      puts "YES! You are correct!"
    else
      player1.lives -= 1
      puts "Seriously? No!"
    end

    player1.turn = false
    player2.turn = true
  else
    question = Question.new
    print "Player 2: "
    puts question.prompt
    print "> "
    answer = gets.chomp.to_i

    if answer == question.answer
      puts "YES! You are correct!"
    else
      player2.lives -= 1
      puts "Seriously? No!"
    end

    player2.turn = false
    player1.turn = true
  end
end

if player1.lives == 0
  puts "Player 2 wins with a score of #{player2.lives}/3"
else
  puts "Player 1 wins with a score of #{player1.lives}/3"
end
puts "----- GAME OVER -----"
puts "Good bye!"
