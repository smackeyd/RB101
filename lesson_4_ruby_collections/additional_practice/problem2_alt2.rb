ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0
counter = 0

loop do
  break if counter == ages.size
  total_ages += ages.values[counter]
  counter += 1
end

p total_ages

p ages.values[0]