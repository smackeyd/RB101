# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}
  downcased_arr = array.map(&:downcase)
  downcased_arr.uniq.each do |element|
    occurrences[element] = downcased_arr.count(element.downcase)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

p count_occurrences(vehicles)
# p vehicles

