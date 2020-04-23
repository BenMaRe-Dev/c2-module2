# Problem Statement
# Given an array, return true if all the elements are Fixnums.
#
# You need to write array_of_fixnums? method to accomplish this task.
#
# Example:
# Given [1,2,3], the method should return true

def array_of_fixnums?(array)
  x = array.all? {|i| i.is_a?(Integer) }  
  puts x
end

array_of_fixnums?([1, 2, 3])
array_of_fixnums?(['a',1,:b])
array_of_fixnums?([])

