def crunch(string)
  clean_arr = []

  string.split(//).map do |chr|
    next if clean_arr.last == chr
    clean_arr << chr
  end

  clean_arr.join
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''