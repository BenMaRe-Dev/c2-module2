# frozen_string_literal: true

# Count words
# Write a method that takes a string and returns a hash with the count of each
# of unique words of the sentence. Unique word count is case insensitive

class Utils
  def self.count_words(text)
    list = {}
    words = text.downcase.split(' ')
    unique_words = words.uniq
    unique_words.each { |uw| list[uw] = words.count(uw) }
    list
  end
end

str = 'cake cake caKe I like cake very much please gIve me cake ' \
      'I need the cake i need it'
result = Utils.count_words(str)

puts result
