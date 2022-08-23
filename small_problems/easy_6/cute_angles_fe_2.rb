=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
and returns a String that represents that angle in degrees, minutes and seconds.
You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes,
and a double quote (") to represent seconds.
A degree has 60 minutes, while a minute has 60 seconds.

1. The whole units of degrees will remain the same
2. Multiply the decimal portion of the figure by 60 (e.g., .135 * 60 = 8.1).
3. The whole number becomes the minutes (8).
4. Take the remaining decimal and multiply it by 60 (e.g., .1 * 60 = 6).
5. The resulting number becomes the seconds (6 seconds). Seconds can remain as a decimal if needed.
6.
=end

require 'pry'
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE # 3600

def degress_from_0_to_360(degrees)
  degrees % 360
end

def dms(floating_point)
  total_seconds = (degress_from_0_to_360(floating_point) * SECONDS_PER_DEGREE).round
  degrees, remainder_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remainder_seconds.divmod(SECONDS_PER_MINUTE)
  binding.pry
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# p dms(30) == %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")