=begin
Convert strings to how they would be written by Jaden Smith.
The strings are actual quotes from Jaden Smith,
but they are not capitalized in the same way he originally typed them.
=end

class String
  def to_jaden_case
    capitalized_quote = ""
    words = self.split
    words.each do |word|
      capitalized_quote += "#{word.capitalize} "
    end
    capitalized_quote[0 ... capitalized_quote.length - 1]
  end
end

quote_1 = "How can mirrors be real if our eyes aren't real"
puts quote_1.to_jaden_case
quote_2 = "this is a random quote"
puts quote_2.to_jaden_case
