def any?
  [1, 2, 3].any? do |num|
    num > 2
  end
end

p any?