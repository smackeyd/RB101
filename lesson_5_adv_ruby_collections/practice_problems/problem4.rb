arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4 # DON'T FORGET THE [0]
p hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2

# In the last example the key for the first item in the outer hash is actually an array containing a single string object ["a"].
# Although this is unusual, it is important to remember that both hash keys and values can be any Ruby object.

p hsh2.keys
p hsh2.values 