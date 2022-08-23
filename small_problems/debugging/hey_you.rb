require 'pry'

### ORIGINAL ###
# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

### MY SOLUTION ###
def shout_out_to(name)
  new_name = name.chars.each do |c|
    c.upcase!
  end
  puts 'HEY ' + new_name.join
end


### ALT SOLUTION ###
def shout_out_to(name)
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'