my_arr = [[18, 7], [3, 12]].each do |arr| # variable assignment AND the method call each on the multi-dim array, returns The calling object	
  arr.each do |num| # each called on each sub-array, element assigned the local variable num. returns the calling object: sub-arr in current iteration 
    if num > 5 # calls on element of sub-arr in current iteration, returns a boolean 
      puts num # outputs if true, returns nil 
    end
  end # inner block returns nil 
end

# There are 4 return values to pay attention to here: the return value of both calls to each and the return value of both blocks.