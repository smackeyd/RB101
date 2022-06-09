munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


total_male_age = munsters.values.inject(0) do |total, details| # details is the inner hash values (with 2 key-value pairs inside)
  details["gender"] == 'male' ? total + details["age"] : total
end

p total_male_age # => 444

values = munsters.values
p values
p values[2]
p values[0]["age"]