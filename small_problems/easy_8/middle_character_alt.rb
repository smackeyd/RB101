# def center_of(string)
#   half = string.size / 2
#   string.size.odd? ? string[half] : string[half - 1, 2]
# end

# anotha one:
def center_of(string)
  middle = string.size / 2
  string.size.odd? ? string[middle] : string[middle-1..middle]
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
p center_of('boop') == 'oo'