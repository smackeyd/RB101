hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

fruits = hsh.map do |_, value|
  if value[:type] == 'fruit' # accessing the values in the value hash
    value[:colors].map do |color| # will return new array inside outer array
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p fruits
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

p hsh.keys
p hsh['grape'][:type]

=begin
The situation for :colors is complicated slightly in that we want to call capitalize on the strings but 
they are nested within arrays so we need to iterate through those arrays in order to access them.
=end 