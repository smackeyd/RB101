=begin
Investigate Enumerable.inject (also known as Enumerable.reduce),
How might this method be useful in solving this problem? (Note that Enumerable methods are available when working with Arrays.)
Try writing such a solution. Which is clearer? Which is more succinct?
=end

def multisum(num)
  num_array = (1..num).to_a
  sum = num_array.reduce(0) do |sum, n|
    n % 3 == 0 || n % 5 == 0 ? sum + n : sum
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
