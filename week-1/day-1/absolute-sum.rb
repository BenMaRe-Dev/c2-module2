# frozen_string_literal: true

def absolute(num1, num2)
  # Save sum and perfom just once
  sum = num1 + num2
  # Turn sum to positive if it's negative
  (sum * -1) if sum.negative?
end

print 'Enter your first number: '
a = gets.chomp.to_i

print 'Enter your second number: '
b = gets.chomp.to_i

puts '------------------'
puts "Absolute sum: #{absolute(a, b)}"
