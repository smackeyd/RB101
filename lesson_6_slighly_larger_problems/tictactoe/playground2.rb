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

def cpu_off_or_def(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, marker)
    break if square
  end
  square
end

def computer_strategy(brd)
  square = nil
  if cpu_off_or_def(brd, PLAYER_MARKER) && cpu_off_or_def(brd, COMPUTER_MARKER)
    square = cpu_off_or_def(brd, COMPUTER_MARKER)
  elsif cpu_off_or_def(brd, PLAYER_MARKER)
    square = cpu_off_or_def(brd, PLAYER_MARKER)
  elsif cpu_off_or_def(brd, COMPUTER_MARKER)
    square = cpu_off_or_def(brd, COMPUTER_MARKER)
  end
  square
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end