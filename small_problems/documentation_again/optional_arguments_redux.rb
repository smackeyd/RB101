require 'date'

puts Date.civil  # everything defaults
puts Date.civil(2016) # month, mday, start use defaults
puts Date.civil(2016, 5)  # mday, start use defaults
puts Date.civil(2016, 5, 13) # start uses default
puts Date.civil(1751, 5, 13, Date::ENGLAND) # nothing defaults