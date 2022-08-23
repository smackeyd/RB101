OPERANDS = [:+, :-, :*, :/, :%, :**]

def calculate(num1, num2, operation)
  [num1, num2].inject(operation)
end

print "Enter the first number: "
first_int = gets.chomp.to_i

print "Enter the second number: "
second_int = gets.chomp.to_i

OPERANDS.each do |operand|
  answer = calculate(first_int, second_int, operand)
  puts "#{first_int} #{operand.to_s} #{second_int} = #{answer}"
end