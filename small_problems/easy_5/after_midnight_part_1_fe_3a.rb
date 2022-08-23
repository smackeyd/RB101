# NOTE: Dates/time computations in this implementation rely on an arbitrarily
# chosen reference date: 2021-11-14 at 00:00

REFERENCE_TIMESTAMP = Time.new(2021, 11, 14).to_i
SECONDS_PER_MINUTE = 60

def day_and_time(delta_minutes)
  date = retrieve_date(delta_minutes)
  date.strftime("%A %H:%M")
end

def retrieve_date(delta_minutes)
  delta_seconds = delta_minutes * SECONDS_PER_MINUTE
  date_in_seconds = REFERENCE_TIMESTAMP + delta_seconds
  Time.at(date_in_seconds)
end

p day_and_time(0)
p day_and_time(-3)
p day_and_time(35)
p day_and_time(-1437)
p day_and_time(3000)
p day_and_time(800)
p day_and_time(-4231)
p day_and_time(-1)
p day_and_time(1440)
p day_and_time(1441)
p day_and_time(1439)
p day_and_time(1200)
p day_and_time(2880)
p day_and_time(-3000)
p day_and_time(1)
