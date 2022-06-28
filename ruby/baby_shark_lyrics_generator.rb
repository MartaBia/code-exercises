
=begin
Create a function, as short as possible, that returns this lyrics.
Your code should be less than 300 characters.
Watch out for the three points at the end of the song.
=end

# --- Completed version ------------------------------

def baby_shark_lyrics()
  song = ""
  keywords = ["Baby shark", "Mommy shark", "Daddy shark", "Grandma shark", "Grandpa shark", "Let's go hunt"]
  keywords.each do |keyword|
    3.times{
      song += "#{keyword}, "
      5.times{
        song += "doo "
      }
      song += "doo\n"
    }
    song += "#{keyword}!\n"
  end

  song += "Run away,…"

  return song
end

# --- submitted on Codewars as <300 characters -------

# def baby_shark_lyrics()
#   s=""
#   ks=["Baby shark","Mommy shark","Daddy shark","Grandma shark","Grandpa shark","Let's go hunt"]
#   ks.each do |k|
#     3.times{
#       s+="#{k}, "
#       5.times{
#         s+="doo "
#       }
#       s+="doo\n"
#     }
#     s+="#{k}!\n"
#   end
#   s+="Run away,…"
# end

puts baby_shark_lyrics
