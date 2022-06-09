elements = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

updated_el = elements.each_with_object([]) do |hsh, arr|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

p updated_el # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]