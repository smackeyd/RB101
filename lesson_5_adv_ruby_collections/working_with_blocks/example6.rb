arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value| # called on each HASH, returns a BOOLEAN 
    value[0] == key.to_s # if the first letter of the value equals the key (converted to string), returns true 
  end
end

p arr # => [{ :c => "cat" }]

# all? will return true if the block passed to it never returns a value of false or nil for every key/value pair in the hash
# Note that the only hash that meets this criteria is {:c => 'cat'}, and the return value is an array.