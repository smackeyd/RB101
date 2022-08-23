# def ascii_value(str)
#   str.empty? ? 0 : str.chars.map(&:ord).sum
# end

# another alt
# def ascii_value(str)
#   str.chars.inject(0) {|sum, char| sum += char.ord}
# end

# another one
def ascii_value(string)
  letters = string.split(//)
  values = []
  letters.each do |letter|
    values << letter.ord
  end
  values.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

p 'a'.chr.ord