arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2[1].upcase!

p arr2 # => ["a", "B", "c"]
p arr1 # => ["a", "B", "c"]

=begin
The destructive method String#upcase!
was called on the object within the array rather than the array itself. 
Since, as we've already covered, those objects are shared, 
even if you mutate that object by referencing it from within a particular array or other collection 
it is the object you are affecting rather than the collection.
=end