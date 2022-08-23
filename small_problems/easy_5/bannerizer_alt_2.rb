def print_in_box(str)
  puts "+#{'-' * (str.size + 2)}+"
  puts "|#{' ' * (str.size + 2)}|"
  puts "| #{str} | "
  puts "|#{' ' * (str.size + 2)}|"
  puts "+#{'-' * (str.size + 2)}+"
end


print_in_box('To boldly go where no one has gone beforesssssssss1238888884567890sssssssssssssssss')

print_in_box('')

print_in_box('hello')