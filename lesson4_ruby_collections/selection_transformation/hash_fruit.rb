def select_fruit(produce_list) # produce_list is argument representing the hash
  produce_keys = produce_list.keys  # keys of the hash argument, returns an ARRAY
  counter = 0 # counter variable
  selected_fruits = {} # an empty hash 

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size # breaks when it finishes going thru produce_keys array 

    current_key = produce_keys[counter] # 1st current_key is the: first index of the produce_keys array
    current_value = produce_list[current_key] # will return the hash VALUE 

    if current_value == 'Fruit' # SELECTION CRITERIA 
      selected_fruits[current_key] = current_value # this adds the truthy value to the selected_fruits hash
    end

    counter += 1
  end

  selected_fruits # returning value of the method 
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}