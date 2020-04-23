# frozen_string_literal: true

def non_duplicated_values(values)
  values.select { |num| values.count(num) == 1 }
end

test_array = [1, 2, 2, 3, 3, 4, 5]

puts non_duplicated_values(test_array)
