=begin
Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439
=end
require 'pry'
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  return 0 if (hours == 0 || hours == HOURS_PER_DAY) && minutes == 0
  (hours * MINUTES_PER_HOUR) + minutes
end

def before_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  return 0 if (hours == 0 || hours == HOURS_PER_DAY) && minutes == 0
  MINUTES_PER_DAY - after_midnight(time)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('03:00') == 180
p before_midnight('03:00') == 1260
p before_midnight('22:00') == 120