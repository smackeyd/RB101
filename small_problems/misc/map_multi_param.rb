animals = [['wet', 'dogs', 3], ['dry', 'birds', 5]]

p animals.map { |attr, anml, num| "#{num.to_s} #{attr} #{anml}" }
# => ["3 wet dogs", "5 dry birds"]