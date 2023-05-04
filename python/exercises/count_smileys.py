# Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.
# Rules for a smiling face:

# - Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
# - A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
# - Every smiling face must have a smiling mouth that should be marked with either ) or D

def count_smileys(arr):
    valid_eyes = [':', ';']
    valid_noses = ['-', '~']
    valid_mouths = [')', 'D']

    smiley_faces = 0
    for face in arr:
        if face[0] in valid_eyes:
            if len(face) == 2:
                if face[1] in valid_mouths:
                    smiley_faces += 1
            if len(face) == 3:
                if face[1] in valid_noses:
                    if face[2] in valid_mouths:
                        smiley_faces += 1

    return smiley_faces


print(count_smileys([]))
print(count_smileys([':D', ':~)', ';~D', ':)']))
print(count_smileys([':)', ':(', ':D', ':O', ':;']))
print(count_smileys([';]', ':[', ';*', ':$', ';-D']))
