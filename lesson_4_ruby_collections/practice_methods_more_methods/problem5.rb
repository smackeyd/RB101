hash = { a: 'ant', b: 'bear' }

p hash.shift # => [:a, "ant"] ARRAY - shift destructively removes the first key-value pair in hash and returns it as a two-item array

p hash #  => {:b=>"bear"} HASH 