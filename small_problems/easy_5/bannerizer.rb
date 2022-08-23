# Write a method that will take a short line of text, and print it within a box.
require 'pry'
def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"
  error_message = 'Message too long!'

  if message.size > 76
    horizontal_rule = "+#{'-' * (error_message.size + 2)}+"
    empty_line = "|#{' ' * (error_message.size + 2)}|"
  end

  puts horizontal_rule
  puts empty_line

  if message.size > 76
    puts "| #{error_message} |"
  else
    puts "| #{message} |"
  end

  puts empty_line
  puts horizontal_rule
end


print_in_box('To boldly go where no one has gone beforesssssssss1234567890sssssssssssssssss')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

print_in_box('hello')