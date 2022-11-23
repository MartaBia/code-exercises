# Write a program that lets two players play Rock, Paper, Scissors. The program should:
# * Ask player 1 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Ask player 2 for their move.  They can input `rock`, `paper` or
#   `scissors`.
# * Calculates who has won.  `rock` beats `scissors`, `paper` beats
#   `rock`, `scissors` beat `paper`.
# * If player 1 has won, `puts`es `Player 1 wins`.
# * If player 2 has won, `puts`es `Player 2 wins`.
# * If the game is a draw, `puts`es `It's a draw`.
#
# * Note: You can assume that players will input one of the three
#   possible moves described above.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
#
# * Note: You can assume the players will only ever input `rock`,
#   `paper` or `scissors`.

def rock_paper_scissors(player_1_move, player_2_move)
  return "It's a draw" if player_1_move == player_2_move

  if player_1_move == "scissors"
    if player_2_move == "paper"
      return "Player 1 wins"
    else
      return "Player 2 wins"
    end
  end

  if player_1_move == "paper"
    if player_2_move == "rock"
      return "Player 1 wins"
    else
      return "Player 2 wins"
    end
  end

  if player_1_move == "rock"
    if player_2_move == "scissors"
      return "Player 1 wins"
    else
      return "Player 2 wins"
    end
  end
end

puts "Player 1, make your move!"
player_1_move = gets.chomp

puts "Player 2, make your move!"
player_2_move = gets.chomp

puts rock_paper_scissors(player_1_move, player_2_move)
