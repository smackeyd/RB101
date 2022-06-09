array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_array = array.map do |hash|
  inc_hash = {} # new hash is created each map iteration 
  hash.each do |key, value|
    inc_hash[key] = value + 1
  end
  inc_hash
end

p new_array

# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]