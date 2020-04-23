# Put N
# Create a method that puts the provided string n times.
#
# The method should validate than n is an integer and that it is a 
# positive number. If not, it should raise a ArgumentError with a 
# message that explains the problem.
#
# It should raise an error for when the number is not an integer, 
# and another for when the number is not positive.

def put_n(str, n_times)
  raise ArgumentError, "It's not an Integer" unless n_times.is_a?(Integer) 
  raise ArgumentError, "It's not positive" unless n_times.positive? 
  n_times.times { puts str }
end

put_n("This will be printed 5 times!", 5)
# Logs
# This will be printed 5 times! 
# This will be printed 5 times! 
# This will be printed 5 times! 
# This will be printed 5 times! 
# This will be printed 5 times! 

