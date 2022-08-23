def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line?!***bruh^")