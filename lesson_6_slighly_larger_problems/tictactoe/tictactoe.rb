INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals
PTS_TO_WIN = 5
PLAYER_NAMES = ['Player', 'Computer']

def prompt(msg)
  puts "=> #{msg}"
end

def welcome_message
  prompt "Welcome to TicTacToe! Best out of 5 wins!"
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  sleep(1)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]} "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]} "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]} "
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def display_marker
  prompt "You are: #{PLAYER_MARKER}. Computer is: #{COMPUTER_MARKER}."
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def random_first_turn
  first = PLAYER_NAMES.sample
  display_first_turn(first)
  first
end

def choosing_first_turn
  first = ''
  answer = ''
  loop do
    prompt "Would you like to decide on who goes first? (Y or N)"
    answer = gets.chomp.downcase
    break if answer.start_with?('y') || answer.start_with?('n')
    prompt "Invalid choice. Please enter Y or N."
  end

  first = player_choose_first_turn if answer == 'y'
  first = random_first_turn if answer == 'n'
  first
end

def player_choose_first_turn
  first = ''
  loop do
    prompt "Please choose who will go first:"
    prompt "#{PLAYER_NAMES[0]} or #{PLAYER_NAMES[1]}:"
    first = gets.chomp.capitalize
    break if first == PLAYER_NAMES[0] || first == PLAYER_NAMES[1]
    prompt "Please enter a valid answer."
  end
  first
end

def display_first_turn(player)
  if player == PLAYER_NAMES[0]
    prompt("Player goes first!")
  else
    prompt("Computer goes first!")
  end
end

def place_piece!(board, current_player)
  if current_player == PLAYER_NAMES[0]
    player_marks_square!(board)
  else
    computer_marks_square!(board)
  end
end

def alternate_player(current_player)
  PLAYER_NAMES.select { |player| player != current_player }.first
end

def player_marks_square!(brd)
  square = ''
  loop do
    prompt "Please choose a square: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_defense(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  square
end

def computer_offense(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  square
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_marks_square!(brd)
  square = nil
  if computer_defense(brd)
    square = computer_defense(brd)
  elsif computer_offense(brd)
    square = computer_offense(brd)
  end

  if !square
    square = empty_squares(brd).include?(5) ? 5 : empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_winner_or_tie(brd)
  if someone_won?(brd)
    prompt("#{detect_winner(brd)} won!")
  else
    prompt("It's a tie!")
  end
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

def display_score(score)
  prompt "Player score is: #{score[:player]}."
  prompt "Computer score is: #{score[:computer]}."
  sleep(1)
end

def update_scores(scr, brd)
  if detect_winner(brd) == 'Player'
    scr[:player] += 1
  elsif detect_winner(brd) == 'Computer'
    scr[:computer] += 1
  else
    scr
  end
end

def display_grand_winner(scores)
  if scores[:player] == PTS_TO_WIN
    prompt("You are the winner!!!")
  else
    prompt("The computer wins!!!")
  end
end

loop do
  welcome_message
  score = { player: 0, computer: 0 }

  loop do
    board = initialize_board
    current_player = choosing_first_turn
    display_first_turn(current_player)
    display_score(score)

    loop do
      display_board(board)
      display_marker
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)
    display_winner_or_tie(board)
    update_scores(score, board)
    break if score[:player] == PTS_TO_WIN || score[:computer] == PTS_TO_WIN
  end

  display_grand_winner(score)
  break unless play_again?
end

prompt "Thanks for playing!"
