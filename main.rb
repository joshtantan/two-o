require "pp"
require "./players"
require "./questions"

player1 = Player.new(true)
player2 = Player.new(false)

while (player1.lives > 0 && player2.lives > 0)
  question = Question.new
  puts question.prompt
  answer = gets.chomp.to_i

  if player1.turn
    if answer == question.answer
      puts "correct. lives remaining: #{player1.lives}"
    else
      player1.lives -= 1
      puts "wrong. lives remaining: #{player1.lives}"
    end

    player1.turn = false
    player2.turn = true
  else
    if answer == question.answer
      puts "correct. lives remaining: #{player2.lives}"
    else
      player2.lives -= 1
      puts "wrong. lives remaining: #{player2.lives}"
    end

    player2.turn = false
    player1.turn = true
  end
end
