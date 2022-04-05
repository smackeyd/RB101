flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

new = flintstones.map! { |name| name[0,3] }

p new 