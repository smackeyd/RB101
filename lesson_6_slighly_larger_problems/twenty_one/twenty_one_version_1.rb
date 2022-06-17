HIT_CHOICES = %w(hit h)
STAY_CHOICES = %w(stay st s)
RANKS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
SUITS = %w(Spades Hearts Diamonds Clubs)
DECK = RANKS.product(SUITS)
PLAYER = 'Player'
DEALER = 'Dealer'
PTS_TO_WIN = 3
TARGET_VALUE = 21
DEALER_TARGET = 17
ACE = 'A'

def prompt(msg)
  puts "=> #{msg}"
end

def card_prompt(card)
  puts " *** #{card} *** "
end

def welcome_message
  system 'clear'
  sleep(1)
  prompt "Welcome to Twenty-One!"
  sleep(1)
  prompt "Best out of 3 wins!!!"
  sleep(2)
end

def initialize_deck
  DECK.shuffle
end

def deal_cards(p_or_d, deck)
  2.times do
    p_or_d << deck.pop
  end
end

def value?(card)
  if card == ACE
    11
  elsif card.to_i == 0
    10
  else
    card.to_i
  end
end

def sum_of_cards(cards)
  values = cards.map { |card| card[0] }
  sum = 0

  values.each do |value|
    sum += value?(value)
  end

  values.select { |value| value == ACE }.count.times do
    sum -= 10 if sum > TARGET_VALUE
  end
  sum
end

def display_player_cards(deck)
  prompt "Here are your cards:"
  puts   "                    "
  sleep(0.5)
  deck.each do |card|
    card_prompt card
    sleep(0.5)
  end
  puts   "                    "
end

def display_dealer_cards(deck)
  system 'clear'
  prompt "The #{DEALER} has #{deck[0]} And a mystery card..."
  puts   "                                                  "
  sleep(2)
end

def display_current_total(curr_player, sum)
  prompt "#{curr_player}'s current total is: #{sum}."
  sleep(1.5)
end

def valid_choice_hit?(input)
  HIT_CHOICES.include?(input)
end

def valid_choice_stay?(input)
  STAY_CHOICES.include?(input)
end

def player_decision
  answer = ''
  loop do
    prompt "Please choose: hit or stay"
    answer = gets.chomp
    break if valid_choice_hit?(answer) || valid_choice_stay?(answer)
    prompt "Invalid choice!"
  end

  if valid_choice_hit?(answer)
    prompt "#{PLAYER} chose to hit!"
  else
    system 'clear'
    prompt "#{PLAYER} chose to stay!"
  end
  sleep(1)
  answer
end

def player_turn(cards, sum, deck, player)
  loop do
    display_player_cards(cards)
    display_current_total(player, sum)
    choice = player_decision
    valid_choice_hit?(choice) ? cards << deck.pop : cards
    sum = sum_of_cards(cards)
    valid_choice_stay?(choice) ? display_current_total(player, sum) : cards
    break if busted?(cards) || valid_choice_stay?(choice)
  end
end

def announce_dealer_turn
  sleep(1)
  prompt "#{DEALER}'s turn!"
  sleep(1)
end

def dealer_turn(d_deck, sum, g_deck, player)
  system 'clear'
  announce_dealer_turn
  loop do
    display_current_total(player, sum)
    break if sum >= DEALER_TARGET || busted?(d_deck)
    d_deck << g_deck.pop
    prompt "#{DEALER}'s deck is now: #{d_deck.each { |card| prompt card }}"
    sleep(1)
    sum = sum_of_cards(d_deck)
  end
end

def busted?(deck)
  sum_of_cards(deck) > TARGET_VALUE
end

def detect_results(p_total, d_total)
  if p_total > TARGET_VALUE
    :player_busted
  elsif d_total > TARGET_VALUE
    :dealer_busted
  elsif d_total < p_total
    :player
  elsif d_total > p_total
    :dealer
  else
    :tie
  end
end

def display_results(p_total, d_total)
  system 'clear'
  result = detect_results(p_total, d_total)
  case result
  when :player_busted
    prompt "#{PLAYER} busted! #{DEALER} wins!"
  when :dealer_busted
    prompt "#{DEALER} busted! #{PLAYER} wins!"
  when :player
    prompt "#{PLAYER} wins!"
  when :dealer
    prompt "#{DEALER} wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def dealer_win?(p_total, d_total)
  detect_results(p_total, d_total) == :player_busted ||
    detect_results(p_total, d_total) == :dealer
end

def player_win?(p_total, d_total)
  detect_results(p_total, d_total) == :dealer_busted ||
    detect_results(p_total, d_total) == :player
end

def display_final_cards(player, dealer, p_total, d_total)
  prompt "#{PLAYER} had #{player} for a total of #{p_total}."
  sleep(1)
  prompt "#{DEALER} had #{dealer} for a total of #{d_total}."
  sleep(2)
end

def display_score(score)
  system 'clear'
  prompt "#{PLAYER}'s score is: #{score[:player]}."
  sleep(1)
  prompt "#{DEALER}'s score is: #{score[:dealer]}."
  sleep(2)
end

def update_scores(scr, p_total, d_total)
  if player_win?(p_total, d_total)
    scr[:player] += 1
  elsif dealer_win?(p_total, d_total)
    scr[:dealer] += 1
  else
    scr
  end
end

def winner?(scr)
  scr[:player] == PTS_TO_WIN || scr[:dealer] == PTS_TO_WIN
end

def display_grand_winner(scores)
  system 'clear'
  if scores[:player] == PTS_TO_WIN
    prompt("Congrats, #{PLAYER}! YOU are the winner!!!")
    sleep(2)
  elsif scores[:dealer] == PTS_TO_WIN
    prompt("#{DEALER} wins the game!!!")
    sleep(2)
  else
    scores
  end
end

def next_round?
  answer = nil
  loop do
    puts "                                           "
    prompt 'Ready for the next round? (Y to Continue)'
    answer = gets.chomp.downcase
    break if answer.start_with?('y')
  end
  prompt 'Next Round!'
  return true if answer
end

def play_again?
  answer = ''
  loop do
    prompt 'Would you like to play again? (Y or N)'
    answer = gets.chomp.downcase
    if answer.start_with?('y')
      return true
    elsif answer.start_with?('n')
      return false
    else
      prompt("Please enter a valid answer.")
    end
  end
end

def goodbye_message
  system 'clear'
  sleep(1)
  prompt "Thanks for playing!! Goodbye"
  sleep(1)
end

# MAIN LOOP
loop do
  welcome_message
  score = { player: 0, dealer: 0 }

  loop do
    player_cards = []
    dealer_cards = []

    game_deck = initialize_deck
    deal_cards(player_cards, game_deck)
    deal_cards(dealer_cards, game_deck)

    player_sum = sum_of_cards(player_cards)
    dealer_sum = sum_of_cards(dealer_cards)

    display_score(score)
    display_dealer_cards(dealer_cards)

    current_player = PLAYER
    player_turn(player_cards, player_sum, game_deck, current_player)
    player_sum = sum_of_cards(player_cards)

    if busted?(player_cards)
      display_results(player_sum, dealer_sum)
      display_final_cards(player_cards, dealer_cards, player_sum, dealer_sum)
      update_scores(score, player_sum, dealer_sum)
      break if winner?(score)
      next if next_round?
    else
      player_cards
    end

    current_player = DEALER
    dealer_turn(dealer_cards, dealer_sum, game_deck, current_player)
    dealer_sum = sum_of_cards(dealer_cards)

    display_results(player_sum, dealer_sum)
    display_final_cards(player_cards, dealer_cards, player_sum, dealer_sum)
    update_scores(score, player_sum, dealer_sum)

    if winner?(score)
      break
    else
      next_round?
    end
  end

  display_grand_winner(score)
  break unless play_again?
end

goodbye_message
