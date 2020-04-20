# Map
# Write a method that takes an Array and executes the given 
# block with each member of the array, creating a new array 
# containing the values returned by the block.
#
# This is what the Array built-in method .map does. 
# The objective is to implement that functionality without 
# using the method. You cannot also use any other similar array method.

def map(array)
  new_array = []
  for element in array
    new_array.push(yield element)
  end
  new_array
end

test_array = [2, 3, 4, 5]
expected = [6, 9, 12, 15]

result = map(test_array) { |element| element * 3}

puts result == expected