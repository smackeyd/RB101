# return a new array identical in structure to the original but containing only the integers that are multiples of 3.
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = arr.map do |array| # returns new, transformed array 
              array.select do |num| # returns new array with what is truthy 
                num if num % 3 == 0
              end
            end
            
p new_array