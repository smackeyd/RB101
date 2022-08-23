# Write a method that takes a string, and returns a new string in which every character is doubled.

def repeater(string)
  new_str = ''
  string.chars.each { |char| 2.times { new_str += char } }
  new_str
end

# alt
# def repeater(string)
#   string.chars.map { |character| character * 2 }.join
# end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''