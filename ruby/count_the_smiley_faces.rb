=begin

Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

Rules for a smiling face:

Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
Every smiling face must have a smiling mouth that should be marked with either ) or D
No additional characters are allowed except for those mentioned.

Valid smiley face examples: :) :D ;-D :~)
Invalid smiley faces: ;( :> :} :]

=end

def valid_eyes(eyes)
  eyes == ":" || eyes == ";"
end

def valid_nose(nose)
  nose == "-" || nose == "~"
end

def valid_mouth(mouth)
  mouth == ")" || mouth == "D"
end

def count_smileys(array)
  smiley_faces = 0
  array.each do |face|
    if face.length <= 3 #to make sure the element is not longer than 3 character
      face_element = face.split("")
      if valid_eyes(face_element[0])
        if (valid_mouth(face_element[1]) && face.length <= 2) || (valid_nose(face_element[1]) && valid_mouth(face_element[2]))
          smiley_faces += 1
        end
      end
    end
  end
  smiley_faces
end

# -- First working version I did and submitted: ----------------------------------

# def count_smileys(array)
#   smiley_faces = 0
#
#   array.each do |face|
#     face_element = face.split("")
#     if face_element[0] == ":" || face_element[0] == ";"
#       face_element.delete_at(1) if face_element.length == 3 && face_element[1] == "-" || face_element[1] == "~"
#       if face_element[1] == ")" || face_element[1] == "D"
#         smiley_faces += 1
#       end
#     end
#   end
#   smiley_faces
# end

puts count_smileys([])
puts count_smileys([":D",":~)",";~D",":)"])
puts count_smileys([":)",":(",":D",":O",":;"])
puts count_smileys([";]", ":[", ";*", ":$", ";-D"])
puts count_smileys([";", ")", ";*", ":$", "8-D"])
