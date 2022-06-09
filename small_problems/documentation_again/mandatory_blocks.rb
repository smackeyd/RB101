a = [1, 4, 8, 11, 15, 19]

value = a.bsearch { |num| num > 8 }
value_idx = a.bsearch_index { |num| num > 8 }

p value 
p value_idx