# frozen_string_literal: true

# Douglas Hofstadter's Pulitzer-prize-winning book, Gödel, Escher, Bach,
# poses the following mathematical puzzle.

# Pick a positive integer x as the start.
# If x is even, divide it by 2.
# If x is odd, multiply it by 3 and add 1.
# Continue this process until x is 1.

# The number x will travel up and down but eventually end at 1
# (at least for all numbers that have ever been tried -- nobody has
# ever proved that the sequence will terminate). Analogously, a hailstone
# travels up and down in the atmosphere before eventually landing on earth.

# This sequence of values of x is often called a Hailstone sequence. Write a method that takes a single argument with formal parameter name x, prints out the hailstone sequence starting at x, and returns the number of steps in the sequence
# Print the hailstone sequence starting at x and return its length.

def hailstone(x)
  length = 0
  until x == 1
    if x.even?
      x /= 2
    else
      x = (3 * x) + 1
    end
    length += 1
    puts x.to_s
  end
  puts "Total steps: #{length}"
end

print 'Enter a positive integer: '
num = gets.chomp.to_i
length = hailstone(num)

# while n > 1
#   if n.even?
#     even = n / 2
#     puts even
#   elsif n.odd?
#     odd = (3 * n) + 1
#     puts odd
#   end
#   break if n == 1
# end
