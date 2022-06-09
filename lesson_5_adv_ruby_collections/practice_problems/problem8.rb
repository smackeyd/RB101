hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str| # strings
    str.chars.each do |char| # letter of each string 
      puts char if vowels.include?(char)
    end
  end
end

p hsh.values
