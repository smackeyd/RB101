def average(array)
  total = 0.0
  array.each do |num|
    total += num
  end
  (total / array.size).round(2)
end

puts average([1, 6]) #== 3.5
puts average([1, 5, 87, 45, 8, 8]) #== 25.67
puts average([9, 47, 23, 95, 16, 52]) #== 40.33