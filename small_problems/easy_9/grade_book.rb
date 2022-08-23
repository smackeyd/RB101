require 'pry'

# def get_grade(gr1, gr2, gr3)
#   average = (gr1 + gr2 + gr3) / 3

#   case
#   when average >= 90 then "A"
#   when average < 90 && average >= 80 then "B"
#   when average < 80 && average >= 70 then "C"
#   when average < 70 && average >= 60 then "D"
#   else                                    "F"
#   end
# end

# alt

# def get_grade(s1, s2, s3)
#   result = (s1 + s2 + s3)/3

#   case result
#   when 90..100 then 'A'
#   when 80..89  then 'B'
#   when 70..79  then 'C'
#   when 60..69  then 'D'
#   else              'F'
#   end
# end

# another one

SCORES = { 'A' => (90..100).to_a,
           'B' => (80..89).to_a,
           'C' => (70..79).to_a,
           'D' => (60..69).to_a,
           'F' => (0..50).to_a }

def get_grade(grade1, grade2, grade3)
  average_grade = (grade1 + grade2 + grade3) / 3
  final_grade = ''
  SCORES.each_pair { |k, v| final_grade = k if SCORES[k].include?(average_grade) }
  final_grade
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"