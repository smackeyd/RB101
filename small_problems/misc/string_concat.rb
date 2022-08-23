string = "hello"
p string.object_id # => 60

string.concat('!')
p string.object_id # => 60
p string # => "hello!"