# frozen_string_literal: true

# Sum
# Write a method that accepts an unknown
# amount of arguments and adds them up.

def sum(*numbers)
  numbers.inject(0) do |sum, n|
    sum + n
  end
end

puts sum(10, 2, 3, 4, 5, 1, 20)
puts sum(10, 2, 3, 4, 5, 1, 20) == 45
