people = { Kate: 27, john: 25, Mike:  18 }

people.sort_by do |name, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]