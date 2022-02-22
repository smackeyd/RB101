VALID_CHOICES = %w(rock paper scissors lizard spock)

ALT_CHOICES = %w(r p sc l sp)

PTS_TO_WIN = 5

WINNING_CHOICES = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['paper', 'spock'],
  spock: ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_CHOICES[first.to_sym].include?(second)
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice) || ALT_CHOICES.include?(choice)
end

def player_prompt
  prompt <<-MSG
    Please choose your move:
    rock ('r') 
    paper ('p')
    scissors ('sc')
    spock ('sp')
    lizard ('l')
    MSG
end

def get_choice(player_choice)
  loop do
    prompt(player_prompt)
    player_choice = Kernel.gets().chomp().downcase
    break if valid_choice?(player_choice)
    prompt("Please enter a valid choice:")
  end
  player_choice
end

def alt_choice_to_valid(choice)
  case choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  end
end

def display_results(player, comp)
  if win?(player, comp)
    prompt("Congrats!!! You won!")
  elsif win?(comp, player)
    prompt("Computer won!")
  else
    prompt("Uh Oh! It's a tie!")
  end
end

def update_score(score, player, comp)
  if win?(player, comp)
    score[:player] += 1
  elsif win?(comp, player)
    score[:computer] += 1
  end
end

def display_winner(scores)
  if scores[:player] == PTS_TO_WIN
    prompt("You are the winner!")
  elsif scores[:computer] == PTS_TO_WIN
    prompt("The computer wins!")
  end
end

def play_again?
  answer = ''
  loop do
    prompt("Do you want to play again? (Y/N)")
    answer = Kernel.gets().chomp().downcase
    if answer.start_with?('y')
      return true
    elsif answer.start_with?('n')
      return false
    else
      prompt("Please enter a valid answer.")
    end
  end
end

loop do
  prompt("Welcome to ROCK PAPER SCISSORS SPOCK LIZARD!")
  prompt("Must win 5 times to beat the Computer!")

  scores = { player: 0,
             computer: 0 }

  loop do
    player_choice = get_choice(player_choice)

    if ALT_CHOICES.include?(player_choice)
      player_choice = alt_choice_to_valid(player_choice)
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{player_choice.upcase}")

    prompt("Computer chose: #{computer_choice.upcase}")

    display_results(player_choice, computer_choice)

    update_score(scores, player_choice, computer_choice)

    prompt("Player score: #{scores[:player]}")
    prompt("Computer score: #{scores[:computer]}")

    break if scores[:player] == PTS_TO_WIN || scores[:computer] == PTS_TO_WIN
  end

  display_winner(scores)

  break unless play_again?
end

prompt("Thank you for playing! Goodbye")
