PLAYER_NAMES = ['Player', 'Computer']

def prompt(msg)
  puts "=> #{msg}"
end

def who_goes_first?
  first = ''
  loop do
    prompt "Please choose who will go first (#{PLAYER_NAMES[0]} or #{PLAYER_NAMES[1]}):"
    first = gets.chomp
    break if first == PLAYER_NAMES[0] || first == PLAYER_NAMES[1]
    prompt "Please enter a valid answer." 
  end
  first
end

p who_goes_first?

def choosing_first_turn
  first = ''
  loop do
    prompt "Would you like to decide on who goes first? (Y or N)"
    answer = gets.chomp.downcase
    answer.start_with?('y') ? first = who_goes_first? : first = random_first_turn
    break if answer == 'Y' || answer == 'N'
    prompt "Invalid choice. Please enter Y or N."
  end
  first 
end