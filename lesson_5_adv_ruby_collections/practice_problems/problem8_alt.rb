hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = []

hsh.each_value do |value|
  value.each do |str|
    str.chars.each do |char|
      vowels << char if 'aeiou'.include?(char)
    end
  end
end

p vowels
p hsh.values