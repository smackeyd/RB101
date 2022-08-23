def triangle(n)
  for stars in 1..n
    puts format("%#{n}s", '*' * stars)
  end
end

triangle(5)
triangle(9)