# Write your first class
#
# Create a class Square that has the property (instance variables) 
# length, which represents the length of one of its sides, and a 
# area method that calculates the area of the Square based on 
# it's length.

class Square
  def initialize(length)
    @length = length
  end

  def area
    @length * @length
  end
end

square_one = Square.new(10)
puts square_one.area 
# Logs: 100