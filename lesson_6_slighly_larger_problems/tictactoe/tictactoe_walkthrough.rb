# require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  prompt "You are: #{PLAYER_MARKER}. Computer is: #{COMPUTER_MARKER}."
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

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER} # creates new key-value pair in new_board hash 
  new_board
end

# initialize_board # {1=>" ", 2=>" ", 3=>" ", 4=>" ", 5=>" ", 6=>" ", 7=>" ", 8=>" ", 9=>" "}

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER} 
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Please choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i  
    break if empty_squares(brd).include?(square) # if the user inputted a valid, available choice
    prompt "Sorry, that is not a valid choice."
  end
  brd[square] = PLAYER_MARKER # permanently modifies board
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty? 
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
                  [[1, 4, 9], [3, 5, 7]] # diagonals 
                  
  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER && brd[line[1]] == PLAYER_MARKER && brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER && brd[line[1]] == COMPUTER_MARKER && brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end 
  
  nil 
end

def display_winner_or_tie(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won!"
  else 
    prompt "It's a tie!"
  end
end

loop do
  board = initialize_board  # main variable we will be passing around
  
  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
    
    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end
  
  display_board(board)
  display_winner_or_tie(board)
  
  prompt "Play again? (y or n)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt "Thanks for playing!"