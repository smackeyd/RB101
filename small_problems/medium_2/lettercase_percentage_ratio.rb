require 'pry'

## MY SOLUTION ###
LOWERCASE = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPERCASE = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |str|
    if LOWERCASE.include?(str)
      hash[:lowercase] += 1
    elsif UPPERCASE.include?(str)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end

def letter_percentages(string)
  count_hash = letter_case_count(string)
  count_hash.transform_values do |v|
    ((v.to_f / string.length) * 100).round(1)
  end
end

### LS SOLUTION ###
# def letter_percentages(string)
#   counts = {}
#   percentages = {}
#   characters = string.chars
#   length = string.length

#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)
#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')