require 'pry'
CHARS = ('A'..'Z').to_a.zip('a'..'z').to_a.flatten

def staggered_case(string, inc_alph = false)
  result = ''
  up = true
  string.chars.each do |el|
    if up && CHARS.include?(el)
      result += el.upcase
      up = !up
    elsif !up && CHARS.include?(el)
      result += el.downcase
      up = !up
    else
      result += el
      up = !up unless inc_alph == false
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
