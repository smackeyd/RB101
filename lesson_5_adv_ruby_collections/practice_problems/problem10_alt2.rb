arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  copy = hash.dup
  copy.each_key do |key|
    copy[key] += 1
  end
  copy
end

p new_arr
