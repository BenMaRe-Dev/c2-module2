# frozen_string_literal: true

# Each
# Write a method that takes an Array and executes
# the given block with each member of the array.
#
# This is what the Array built-in method .each does.
# The objective is to implement that functionality without using
# the method. You cannot also use any other similar array method.

def each(array)
  for element in array
    yield(element)
  end
end

test_array = [2, 3, 4, 5]
each(test_array) { |element| puts "Number is #{element}" }
# Has as a result:
# Number is 2
# Number is 3
# Number is 4
# Number is 5
