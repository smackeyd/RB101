def change_name(my_name)
  my_name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim

# passed by value, since re-assigning the variable only affected the method-level variable, and not the main scope variable.
# parameter in block changed to 'my_name', same result