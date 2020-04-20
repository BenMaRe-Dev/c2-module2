# frozen_string_literal: true

print 'Who? '
name = gets.chomp

if name.empty?
  puts 'One for me, one for you'
else
  puts "One for #{name}, one for me"
end
