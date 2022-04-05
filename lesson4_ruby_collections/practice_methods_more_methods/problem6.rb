p ['ant', 'bear', 'caterpillar'].pop.size

=begin
First, pop is being called on the array. pop destructively removes the LAST element from the calling array and returns it. 
Second, size is being called on the return value by pop. 
Once we realize that size is evaluating the RETURN VALUE OF POP (which is "caterpillar") 
then the final return value of 11 should make sense.
=end 

p ['ant', 'bear', 'caterpillar'].shift.size