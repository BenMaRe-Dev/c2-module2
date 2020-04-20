# frozen_string_literal: true

def palindrome?(sentence)
  new_string = sentence.downcase.gsub(' ', '')
  new_string == new_string.reverse
end
