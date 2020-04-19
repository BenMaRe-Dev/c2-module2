print "please, choose your math operation: "
symbol = gets.chomp

print "insert first number: "
a = gets.chomp.to_i
print "insert second number: "
b = gets.chomp.to_i


class Calculator
  def add(a, b)
   a + b
  end

  def subtract(a, b)
   a - b
  end
   
  def divide(a, b)
   a / b
  end
  
  def multiply(a, b)
    a * b
  end
   
  def exponentiate(a, b)
    a ** b
  end
  
  def modulo(a, b)
    a % b
  end
end

calculator = Calculator.new
if symbol == "+"
  puts "The sum is #{calculator.add(a, b)}" 
elsif symbol == "-"
  puts "The subtract is #{calculator.subtract(a, b)}" 
elsif symbol == "/"
  puts "The division is #{calculator.divide(a, b)}" 
elsif symbol == "*"  
  puts "The multiplication is #{calculator.multiply(a, b)}" 
elsif symbol == "**"  
  puts "The exponentiation is #{calculator.exponentiate(a, b)}"
else symbol == "%" 
  puts "The module is #{calculator.modulo(a, b)}" 
end