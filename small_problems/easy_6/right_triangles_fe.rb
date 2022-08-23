require 'pry'

def triangle(num, corner)
  lines = []
  num.times { |i| lines << ('*' * (i + 1)).rjust(num) }
  # binding.pry
  lines.map! { |l| l.reverse } if corner[1] == 'l'
  # binding.pry
  lines.reverse! if corner[0] == 't'
  # binding.pry
  puts lines
end

triangle(5, 'bl')
triangle(5, 'br')
triangle(5, 'tl')
triangle(5, 'tr')
