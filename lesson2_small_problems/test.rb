def get_choice(play_choice)
  loop do
    # puts player_prompt
    play_choice = gets.chomp.downcase
    # break if valid_choice?(play_choice)
    # prompt("Please enter a valid choice:")
  end
  play_choice
end 

p get_choice('paper')