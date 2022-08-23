MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def adjustment(hour)
  corrected = 0

  if hour < 0
    if hour < -(HOURS_PER_DAY)
      corrected = hour.abs.remainder(HOURS_PER_DAY) + -(HOURS_PER_DAY)
      corrected = corrected.abs
    else
      corrected = (hour += HOURS_PER_DAY)
    end
  elsif hour > HOURS_PER_DAY
    corrected = hour / HOURS_PER_DAY unless hour.remainder(HOURS_PER_DAY) == 0
  else
    corrected
  end

  corrected
end

def needs_adjustment?(hour)
  hour >= HOURS_PER_DAY || hour < 0
end

def time_of_day(delta_min)
  hour, minute = delta_min.divmod(MINUTES_PER_HOUR)
  needs_adjustment?(hour) ? hour = adjustment(hour) : hour
  format('%02d:%02d', hour, minute)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(-1) == '23:59'
p time_of_day(1440) == '00:00'
p time_of_day(1441) == '00:01'
p time_of_day(1439) == '23:59'
p time_of_day(1200) == '20:00'
p time_of_day(2880) == '00:00'
p time_of_day(-3000) == '22:00'
p time_of_day(1) == '00:01'