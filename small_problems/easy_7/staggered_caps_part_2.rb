require 'pry'
CHARS = ('A'..'Z').to_a.zip('a'..'z').to_a.flatten

def staggered_case(string)
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
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
