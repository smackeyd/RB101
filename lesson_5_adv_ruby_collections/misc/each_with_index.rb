arr = ['my', 'first', 'encrypted', 'sentence'] # this array has 4 elements
encrypted_sentence = ""

arr.each_with_index do |el, idx|
  encrypted_sentence += el
  encrypted_sentence += "-" if (idx < arr.size - 1)
end

puts encrypted_sentence # outputs my-first-encrypted-sentence