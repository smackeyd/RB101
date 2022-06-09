arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

p arr.sort # => [["1", "8", "11"], ["1", "8", "9"], ["2", "12", "15"], ["2", "6", "13"]]

arr2 = arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end
# => [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], ["2", "12", "15"]]

p arr2 # sorts based on INTEGERS 

=begin
The map call does, indeed, produce an array of integers. However, it doesn't transform the original array of arrays of strings. 
sort_by merely uses the return value of the map call to determine how it will sort the nested arrays of strings.
=end 