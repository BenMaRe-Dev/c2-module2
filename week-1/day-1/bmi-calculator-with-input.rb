print "Please enter your weight (Kg): "
weight = gets.chomp.to_f

print "Now please enter your height (m): "
height = gets.chomp.to_f

bmi = (weight / height ** 2)

puts bmi.round(2)