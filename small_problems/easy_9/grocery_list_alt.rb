# def buy_fruit(list)
#   list.each_with_object([]) do |sub, fruits|
#     sub.last.times {fruits << sub.first}
#   end
# end

# alt
# def buy_fruit(array)
#   array.map.with_object([]) do |sub_arr, res_arr|
#     sub_arr[1].times { |i| res_arr << sub_arr[0] }
#   end
# end

# alt 2
def buy_fruit(list)
  list.map { |food| [food[0]] * food[1] }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #== ["apples", "apples", "apples", "orange", "bananas","bananas"]