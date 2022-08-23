require 'date'
require 'pry'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.civil(year, 1, 13)
#   binding.pry
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end

### ALT 1 ###
# def friday_13th(year)
#   start_date = Date.new(year)
#   end_date = start_date + 364
#   (start_date..end_date).count do |date|
#     binding.pry
#     date.friday? && date.mday == 13
#   end
# end

## ALT 2 ###
def friday_13th(year)
  months = (1..12).to_a
  months.select! do |month|
    day = Date.new(year, month, 13)
    # binding.pry
    day.cwday == 5 # days of wk are defined 1..7; start on Monday => Friday is 5
  end.count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2