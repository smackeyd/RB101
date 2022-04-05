{ a: 'ant', b: 'bear', c: 'cat' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear", nil] 