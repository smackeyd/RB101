characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }
  
p characters

uuid = ""
counter = 0
samples = [8, 4, 4, 4, 12]

loop do
  break if uuid.size == samples[counter]
  uuid += characters.sample
  counter += 1
end

p uuid