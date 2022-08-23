=begin
Write a method that takes a string, and then returns a hash that contains 3 entries:
one represents the number of characters in the string that are lowercase letters,
one the number of characters that are uppercase letters, and one the number of characters that are neither.
=end

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

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
