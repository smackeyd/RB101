def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[1] # source of the error 
end

# Inside each of these methods, the intention is to split the local variable new_car into two new strings: "Ford" and "Mustang". The make method should return "Ford" and the model method should return "Mustang"

make, model = car("Ford Mustang") # When you first call car, a string is passed in as an argument. The string represented by the local variable new_car is passed into two helper methods: make and model.
p make == "Ford"         # => true
p model.start_with?("M") # => NoMethodError: undefined method `start_with?' for nil:NilClass

