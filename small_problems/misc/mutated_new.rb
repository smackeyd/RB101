names = ['bob', 'joe', 'susan', 'margaret']

# mutated = names.each_with_index do |name, i|
#   if name == 'margaret'
#     names[i] = 'jody'
#   end
# end

# p mutated
# p names

newnew = names.map do |name|
  name.start_with?('m') ? name = 'jody' : name
end

p newnew
p names