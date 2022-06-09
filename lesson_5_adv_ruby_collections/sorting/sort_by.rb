arr = ['cot', 'bed', 'mat'].sort_by do |word|
  word[1] # the second letter/element in each string (the vowels)
end

p arr # => ["mat", "bed", "cot"]