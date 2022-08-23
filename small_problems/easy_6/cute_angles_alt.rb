require 'pry'
DEGREE = "\xC2\xB0"

def dms(angle)
  degree = angle - (angle % 1)
  minute = (angle % 1) * 60
  second = (minute.round(2) % 1) * 60
  # binding.pry
  format(%(#{degree.round}#{DEGREE}%02d'%02d"), minute.round, second.round)
end

p dms(76.73) #== %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")