arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort do |a,b|
  b.to_i <=> a.to_i
end

p new_arr