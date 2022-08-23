# def buy_fruit(list)
#   fin_list = []
#   list.each do |list|
#     list[1].times { fin_list << list[0] }
#   end
#   fin_list
# end

# alt 1
# def buy_fruit(list)
#   expanded_list = []

#   list.each do |item|
#     fruit, quantity = item[0], item[1]
#     quantity.times { expanded_list << fruit }
#   end

#   expanded_list
# end

# alt 2
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #== ["apples", "apples", "apples", "orange", "bananas","bananas"]