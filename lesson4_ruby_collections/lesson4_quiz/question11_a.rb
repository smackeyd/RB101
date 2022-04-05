def star_method(stars)
  arr = []
  counter = 0

  until counter == stars.size
    star = stars[counter]
    arr << star if star.size > 4

    counter += 1
  end
  arr
end

stars_1 = ['Sirius', 'Rigel', 'Vega', 'Polaris', 'Altair']
stars_2 = star_method(stars_1)

p stars_2