# frozen_string_literal: true

# Echo
# Create a program that ask the user for a string and how many times
# they want to repeat it. Then, the program should log (with puts) the
# provided string the number of times required.
#
# The program should use the solution from put_n to do the logging.
#
# If put_n raises an error from the user input, the program should rescue it
# and log a message I don't understand how many times do you want to echo the
# string!. After that, the program should ask the user again the string and how
# many times they want to repeat it.

class Codeable
  def self.put_n(string, n_times)
    raise ArgumentError, "It's not an Integer" unless n_times.is_a?(Integer)
    raise ArgumentError, "It's not positive" unless n_times.positive?

    n_times.times { puts string }
  end
end

begin
  puts 'What do you want to echo?'
  string = gets.chomp

  puts 'How many times do you want to repeat it?'
  n_times = gets.chomp.to_i

  Codeable.put_n(string, n_times)
rescue ArgumentError
  puts "I don't understand how many times do you want to echo the string!"
  retry
end
