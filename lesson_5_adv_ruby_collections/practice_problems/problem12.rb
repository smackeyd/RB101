arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}

arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh

p arr[0][0]
p arr[0][1]
p arr[2][1]
p arr[2][1][:c]
p arr[3][0]
p arr[3][0][:d]
p arr[3][1]