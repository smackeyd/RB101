PAIRS = {
  '(' => ')',
  '[' => ']',
  '{' => '}',
  '“' => '”',
  "‘" => "’"
}

# Scaffolding: Reuse of old methods
def balanced_pair?(string, left_char, right_char)
  balance = 0
  string.each_char do | char|
    balance += 1 if char == left_char
    balance -= 1 if char == right_char
    break if balance < 0
  end
  balance.zero?
end

# A human-readable way to reduce hard-coding by iteration.
def balanced?(string)
  PAIRS.all? do |left_char, right_char|
    balanced_pair?(string, left_char, right_char)
  end
end

# A variation on above method to return early if there's a pair
# that's unbalanced, think "One bad apple spoils the bunch!"
# Concept: Short-circuiting
# Method name cr: Richard L.
def all_balanced?(string)
  !(PAIRS.any? { |left, right| !balanced_pair?(string, left, right) })
end


# Test cases, with slight alteration.
# Credit: Marwan Z.
p balanced?("I don't k{now} mmmm [] i[f ()t(h'is doesn't ('will work") == false
p all_balanced?('What (is) this?') == true
p all_balanced?('What is) this?') == false
p all_balanced?('What (is this?') == false
p all_balanced?('((What) (is this))?') == true
p all_balanced?('((What)) (is this))?') == false
p all_balanced?('Hey!') == true
p all_balanced?(')Hey!(') == false
p all_balanced?('What ((is))) up(') == false
p all_balanced?("He said, “I like turtles”.") == true
p all_balanced?("He said, “I like turtles.") == false
p all_balanced?("He said, I like turtles”.") == false
p all_balanced?("He said, ‘I like turtles’.") == true
p all_balanced?("“He said, ‘I like turtles’.”") == true
p all_balanced?('What [(is)] this?') == true
p all_balanced?('What [(is) this?') == false
p all_balanced?("He said, ‘I like turtles’.") == true
p all_balanced?("PHe said, ‘I like turtles’.P") == true
p all_balanced?('({What [(is) this]?)}') == true
p all_balanced?('What [(is]) this?') == true