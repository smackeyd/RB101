def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
p multiply_list([2, 4, 6, 8], [8, 6, 4, 2]) == [16, 24, 24, 16]
p multiply_list([10, 20, 30, 40], [1, 2, 3, 4]) == [10, 40, 90, 160]