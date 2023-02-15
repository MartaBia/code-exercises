# Version with one line for every colour:
def grades_report(string)
  fail "A string must be inserted" if string.empty?

  grades = string.split(", ")
  final_grades = Hash.new

  grades.each do |grade|
    if !final_grades.key?(grade)
      final_grades[grade] = 1
    else
      final_grades[grade] += 1
    end
  end

  final_string = ""
  final_grades.each do |grade, count|
    final_string += "#{grade}: #{count}\n"
  end

  return final_string[0 ... final_string.length - 1]
end

# Initial version with one line of output
# def grades_report(string)
#   fail "A string must be inserted" if string.empty?

#   grades = string.split(", ")
#   final_grades = Hash.new

#   grades.each do |grade|
#     if !final_grades.key?(grade)
#       final_grades[grade] = 1
#     else
#       final_grades[grade] += 1
#     end
#   end

#   final_string = ""
#   final_grades.each do |grade, count|
#     final_string += "#{grade}: #{count}, "
#   end

#   return final_string[0 ... final_string.length - 2]
# end