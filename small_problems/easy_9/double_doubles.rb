require 'pry'

def double_num?(num)
  num_arr = num.to_s.chars
  half = (num_arr.size / 2)
  first, second = num_arr.partition.with_index do |_, idx|
    idx < half
  end
  first == second unless num.size == 1
end

def twice(num)
  double_num?(num) ? num : num * 2
end

p double_num?(44)
p double_num?(7676)
p double_num?(3333)
p double_num?(123_456_789_123_456_789)
p double_num?(103103)

p twice(9)
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10