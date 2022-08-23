def after_midnight(time)
  hours, min = time.split(':').map(&:to_i)
  hours == 24 ? 0 : (hours * 60) + min
end

def before_midnight(time)
  am = after_midnight(time)
  am == 0 ? 0 : 1440 - am
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('03:00') == 180
p before_midnight('22:00') == 120