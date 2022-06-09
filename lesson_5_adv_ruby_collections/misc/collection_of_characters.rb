str1 = 'hello world'
str2 = str1

p str1.object_id == str2.object_id
p str1[0].object_id
p str2[0].object_id