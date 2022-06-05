#HOW I DID RESOLVE IT:
def define_suit(card)
  card.downcase!
  if card.include? "c"
    suit = "clubs"
  end
  if card.include? "s"
    suit = "spades"
  end
  if card.include? "h"
    suit = "hearts"
  end
  if card.include? "d"
    suit = "diamonds"
  end
  return suit
end

define_suit("3C")
define_suit("QS")
define_suit("9D")
define_suit("JH")
define_suit("QD")

#MY SOLUTION WAS NOT WORKING (SYSTEM PROBLEM) SO I SUBMITTED TOMMUY'S SOLUTION:

# def define_suit(card)
#   suit_symbol = card[card.length - 1].downcase
#   case suit_symbol
#   when "s"
#     "spades"
#   when "d"
#     "diamonds"
#   when "h"
#     "hearts"
#   when "c"
#     "clubs"
#   end
# end
#
# DECK = ['2S','3S','4S','5S','6S','7S','8S','9S','10S','JS','QS','KS','AS',
#         '2D','3D','4D','5D','6D','7D','8D','9D','10D','JD','QD','KD','AD',
#         '2H','3H','4H','5H','6H','7H','8H','9H','10H','JH','QH','KH','AH',
#         '2C','3C','4C','5C','6C','7C','8C','9C','10C','JC','QC','KC','AC']
#
# DECK.each do |card|
#   puts "#{card} -> #{define_suit(card)}"
# end
