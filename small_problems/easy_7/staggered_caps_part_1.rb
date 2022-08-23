def staggered_case(string)
  string.chars.map.with_index do |chr, idx|
    if chr =~ /[A-z]/ && idx.even?
      chr.upcase
    elsif chr =~ /[A-z]/ && idx.odd?
      chr.downcase
    else
      chr
    end
  end.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'