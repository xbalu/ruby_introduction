def rps(player1, player2)
  if player1 == player2
    puts "Draw"
    return
  end

  players = [player1, player2]
  any_scissors = players.index("scissors")
  any_paper = players.index("paper")
  any_rock = players.index("rock")

  if any_scissors && any_paper
    puts "Player #{any_scissors + 1} wins"
  elsif any_paper && any_rock
    puts "Player #{any_paper + 1} wins"
  elsif any_rock && any_scissors
    puts "Player #{any_rock + 1} wins"
  end
end

rps('scissors', 'paper')
rps('rock', 'paper')
rps('scissors', 'scissors')
