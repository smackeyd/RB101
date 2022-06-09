require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

COMPUTER_MARKER = 'O'
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def computer_defense(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  # binding.pry
  square
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_offense(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  square 
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


board = initialize_board
board[2] = PLAYER_MARKER
board[3] = PLAYER_MARKER

p computer_offense(board)
p computer_defense(board)

def computer_marks_square!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square
    square = empty_squares(brd).include?(5) ? 5 : empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end
