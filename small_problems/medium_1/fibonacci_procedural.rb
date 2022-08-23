### no recursion ###
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   last
# end

### ALT ###
# def fibonacci(nth)
#   sequence = []

#   nth.times do
#     sequence << (sequence.size < 2 ? 1 : sequence[-1] + sequence[-2])
#   end

#   sequence.last
# end

### another one ###
def fibonacci(n)
  fibs = [1, 1]
  until fibs.size >= n
    fibs << (fibs[-2] + fibs[-1])
  end
  fibs.last
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(6)
p fibonacci(100)