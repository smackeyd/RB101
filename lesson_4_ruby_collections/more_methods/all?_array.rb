def all?
  [1, 2, 3].all? do |num|
    num > 2
  end
end

p all? 