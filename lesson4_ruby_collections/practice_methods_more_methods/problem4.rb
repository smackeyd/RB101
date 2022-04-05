['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
# => { "a" => "ant", "b" => "bear", "c" => "cat" }

array = ['ant', 'bear', 'cat']
p array[2][0]

hash = Hash.new
hash[array[0][0]] = 'ant'
p hash 