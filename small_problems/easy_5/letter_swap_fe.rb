=begin
How come our solution passes word into the swap_first_last_characters method invocation
instead of just passing the characters that needed to be swapped?
Suppose we had this implementation:
=end

# further exploration: the original method doesn't have the word itself passed as an argument:

def swap_first_last_characters(wrd, a, b)
  a, b = b, a
  wrd[0] = a
  wrd[-1] = b
  wrd
end

word = 'kitty'
p swap_first_last_characters(word, word[0], word[-1])

