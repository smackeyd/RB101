array = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']].map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item    # if it's an integer
      item > 13
    else
      item.size < 6 # if it's a string 
    end
  end
end

p array # => [[27], ["apple"]]