munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0 # create variable for total age and set to 0

munsters.each_value do |details| # take note of method .each_value 
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age # => 444

p munsters.keys
p munsters.values 