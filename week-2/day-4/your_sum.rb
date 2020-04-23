class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      array.inject(initial_value) { |acc, num| acc + yield(num) }
    else
      array.inject(initial_value) { |acc, num| acc + num }
    end
  end
end
