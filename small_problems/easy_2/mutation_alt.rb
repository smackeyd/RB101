array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []

array1.each do |value|
  if value.start_with?('C', 'S')
    array2 << value.upcase
  else
    array2 << value
  end
end

p array1
p array2