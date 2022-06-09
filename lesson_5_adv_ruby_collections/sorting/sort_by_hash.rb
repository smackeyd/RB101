people = { Kate: 27, john: 25, Mike:  18 }

order = people.sort_by do |_, age|
  age
end

p order # => [[:Mike, 18], [:john, 25], [:Kate, 27]]