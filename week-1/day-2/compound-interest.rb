# frozen_string_literal: true

# Write a program to calculate compounded interest using a while loop.
# The user inputs the amount deposited, the interest rate (as a percentage) per
# period, and the number of periods the deposit accumulates interest. Compound
# interest means that every period, your new balance is calculated using the
# last period’s balance times the interest rate.

# An example of compound interest would be:
# Lets say I have a bank account that gives me 1% of interest each month (I wish
# this existed), and I left 1000 soles in there for 3 months.

# In the first month I would get 1% of interest from the 1000 soles, that's 10
# soles. The total amount that I would have in the bank would change to S/1010

# For the second month, I get another 1% from the money that is in the account
# (S/ 1010), which would be about S/10.1. Now I would have in the bank S/1020.1.

# For the third month, I get another 1% from the money that is in the account
# (S/ 1020.1), which would be about S/10.2. Now I would have in the bank S/1030.3

print 'Please, enter the amount to be deposited: '
initial_amount = gets.chomp.to_f
print 'Please, enter the interest rate (%): '
interest_rate = gets.chomp.to_f
print 'Please, enter the number of periods (months) for the deposit: '
months = gets.chomp.to_i

are_valid_inputs = initial_amount.positive? && interest_rate.positive? && months.positive?

def calculate(amount, interest_rate, months)
  counter = 1
  while counter <= months
    interest = amount * (interest_rate.to_f / 100)
    amount += interest
    counter += 1
  end
  amount.round(2)
end

if are_valid_inputs
  puts "In #{months} months you inital deposit of S/. #{initial_amount}" \
       " will be S/. #{calculate(initial_amount, interest_rate, months)}"
else
  puts 'Please enter only numbers and greather than zero'
end
