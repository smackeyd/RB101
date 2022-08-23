def staggered_case(string)
  string.chars.map.with_index do |el, index|
  index.even? ? el = el.upcase : el = el.downcase
  end.join
end

# Further Exploration:
# def staggered_case(string, first_letter = :upper)
#   if first_letter == :upper
#     result = string.chars.map.with_index do |el, index|
#       index.even? ? el = el.upcase : el = el.downcase
#     end
#   else
#     result = string.chars.map.with_index do |el, index|
#       index.odd? ? el = el.upcase : el = el.downcase
#     end
#   end
#   result.join
# end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
