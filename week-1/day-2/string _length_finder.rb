# frozen_string_literal: true

# Problem Statement
# Given an array containing some strings, return an array containing the length of those strings.

# You are supposed to write a method named 'length_finder' to accomplish this task.

def length_finder(input_array)
  input_array.map(&:length)
end
# puts x -- put this inside of method and equal input_array.length to it

length_finder(%w[I am genius])
