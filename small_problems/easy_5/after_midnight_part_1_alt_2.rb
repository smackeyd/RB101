def time_of_day(num)
  num = num % 1440
  time =  num.divmod(60)
  time = "%02d:%02d" % time
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