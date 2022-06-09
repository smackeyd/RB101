people = { Kate: 27, john: 25, Mike:  18 }

names = people.sort_by do |name, _|
  name.capitalize
end

p names # => [[:john, 25], [:Kate, 27], [:Mike, 18]]