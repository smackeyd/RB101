words = [["the", "quick"], ["brown", "fox"], ["jumped"], ["over", "the", "lazy", "dog"]]

strings = ''

words.each do |sub_arr|
  sub_arr.each do |string|
    string.chars.each do |letter|
      strings << letter
    end
  end
end

p strings
p strings.chars