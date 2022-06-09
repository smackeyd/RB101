def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end
  # puts "hi" # if we add this here a_method will return nil & puts always returns nil 
end

p a_method # last expression in method is [1, 2, 3].each, which return value is 1,2,3 ORIGINAL COLLECTION!!!!!