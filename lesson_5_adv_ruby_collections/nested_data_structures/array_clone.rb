arr1 = ["abc", "def"]
arr2 = arr1.clone
arr2[0].reverse!

p arr2 # => ["cba", "def"]
p arr1 # => ["cba", "def"]

=begin
The destructive methods String#reverse!
was called on the object within the array rather than the array itself. 
Since, as we've already covered, those objects are shared, 
even if you mutate that object by referencing it from within a particular array or other collection 
it is the object you are affecting rather than the collection.
=end