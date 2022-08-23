def staggered_case(string, first_letter = :upper)
  result = string.chars.map do |char|
    if first_letter == :upper && char =~ /[a-zA-Z]/
      first_letter = :not_upper
      char = char.upcase
    elsif first_letter != :upper && char =~ /[a-zA-Z]/
      first_letter = :upper
      char = char.downcase
    else
      char
    end
  end
  result.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'