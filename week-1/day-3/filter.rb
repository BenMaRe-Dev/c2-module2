# Filter
# Write a method that takes an Array and executes the given 
# block with each member of the array, creating a new array 
# containing the values for which the given block returns a true value.
#
# This is what the Array built-in method .filter does. The objective is 
# to implement that functionality without using the method. 
# You cannot also use any other similar array method.

def filter(array)
  new_array = []
  for element in array do
    new_array.push(element) if yield(element)
  end
  new_array
end

test_array = [2, 3, 4, 5]
expected = [4, 5] # -> numbers 2 and 3 were removed

result = filter(test_array) { |element| element > 3}
puts result
puts result == expected