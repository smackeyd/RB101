hsh = {1=>" ", 2=>" ", 3=>" ", 4=>"x", 5=>"x", 6=>"x", 7=>" ", 8=>" ", 9=>" "}

what = hsh.values_at(4, 5, 6)

p what 
p what.count('x')