=begin
Write a method that takes a year as input and returns the century.
The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.
=end
SUFFIX_EXCEPTIONS = %w(11 12 13)

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(cent)
  cent_arr = cent.to_s.chars
  suff = ''

  cent_arr.each do |digit|
    if cent_arr.last == '1'
      suff = 'st'
    elsif cent_arr.last == '2'
      suff = 'nd'
    elsif cent_arr.last == '3'
      suff = 'rd'
    else
      suff = 'th'
    end

    if SUFFIX_EXCEPTIONS.include?((cent % 100).to_s)
      suff = 'th'
    end
  end

  suff
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'