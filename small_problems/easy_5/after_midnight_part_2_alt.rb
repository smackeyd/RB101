def after_midnight(stringed_time)
  return 0 if stringed_time == "00:00" || stringed_time == "24:00"
  numed_array = stringed_time.split(":").map {|n| n.to_i}
  (numed_array[0] * 60) + numed_array[1]
end

def before_midnight(stringed_time)
  return 0 if stringed_time == "00:00" || stringed_time == "24:00"
  minutes_gone_by = after_midnight(stringed_time)
  1440 - minutes_gone_by
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('03:00') == 180
p before_midnight('22:00') == 120