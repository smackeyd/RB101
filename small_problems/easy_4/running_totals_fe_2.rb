# Try solving this problem using Enumerable#each_with_object or Enumerable#inject
def running_total(array)
  array.each_with_object([]).with_index do |(num, arr), idx|
    arr.empty? ? arr << num : arr << num + arr[idx-1]
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
