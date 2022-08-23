def find_fibonacci_index_by_length(num)
  fibonacci_arr = [1, 1]
  current_digit = 1

  loop do
    break if fibonacci_arr[-1].to_s.size == num

    current_digit += fibonacci_arr[-2]
    fibonacci_arr << current_digit
  end

  fibonacci_arr.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847