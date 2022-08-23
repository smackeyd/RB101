=begin
Build a program that asks a user for the length and width of a room in meters
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet
=end
SQMETERS_TO_SQYARDS = 1.19599
SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCM = 929.03

def length_of_room
  puts 'Please enter the length of the room in meters:'
  gets.chomp.to_f
end

def width_of_room
  puts 'Please enter the width of the room in meters:'
  gets.chomp.to_f
end

def square_meters(w, l)
  (l * w).round(2)
end

def square_yards(w, l)
  (square_meters(w, l) * SQMETERS_TO_SQYARDS).round(2)
end

def square_feet(w, l)
  (square_meters(w, l) * SQMETERS_TO_SQFEET).round(2)
end

def square_inches(w, l)
  (square_feet(w, l) * SQFEET_TO_SQINCHES).round(2)
end

def square_cm(w, l)
  (square_feet(w, l) * SQFEET_TO_SQCM).round(2)
end

def display_size(w, l)
  puts "The area of the room is:"
  puts "#{format("%0.2f", square_meters(w, l))} square METERS,"
  puts "#{format("%0.2f", square_yards(w, l))} square YARDS,"
  puts "#{format("%0.2f", square_feet(w, l))} square FEET,"
  puts "#{format("%0.2f", square_inches(w, l))} square INCHES,"
  puts "and #{format("%0.2f", square_cm(w, l))} square CM."
end

width = width_of_room
length = length_of_room

display_size(width, length)

# p square_feet(width, length)
# p square_meters(width, length)
# p square_inches(width, length)
# p square_cm(width, length)
