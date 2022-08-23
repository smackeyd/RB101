a = "hello"

p [1, 2, 3].map { |num| a } # => ["hello", "hello", "hello"]

=begin
The Array#map method is defined in such a way that it uses
the return value of the block to perform transformation on each element in an array.
In the above example, the #map method doesn't have direct access to the a variable.
However, the block that we pass to map (and that map calls) does have access to a.
Thus, the block can use the value of a to determine the transformation value for each array element.
=end