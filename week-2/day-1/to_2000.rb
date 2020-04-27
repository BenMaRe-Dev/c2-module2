# To 2000
# In the 2000 decade, people spoke a little bit different 
# than today through instant message apps.
# For some reason, people thought it was cooler to use upper 
# and lower case letters in their message in random positions
# Your job today is to bring back the old times to the last 
# year of this decade.
# Add a new method to_2000 in the String class that returns
# the 2000 decade version of sentence.
# to_2000 returns a string that has intercalated upper and 
# lower case letters.
#
# Examples:
# "Hola, como estas? -> HoLa, CoMo EsTaS?
# "Porque escribes de esa manera? -> PoRqUe EsCrIbEs De EsA mAnEra?
# "What is wrong with you? -> WhAt Is WrOnG wItH yOu?

class String
  def self.to_2000(str)
    str.split("").map.with_index { |l, i| i.even? ? l.upcase : l.downcase }.join
  end
end

puts String.to_2000("Hola, como estas?")
puts String.to_2000("Porque escribes de esa manera?")
puts String.to_2000("What is wrong with you?")
