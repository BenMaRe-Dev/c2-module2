# frozen_string_literal: true

def count_duplicates(numbers)
  count = 0
  sorted = numbers.sort!
  sorted.each_with_index do |n, i|
    if n == numbers[i + 1]
      count += 1
    else
      count
    end
  end
  count
end

numbers_1 = [1, 2, 3, 2, 5, 8, 5, 10, 5]
numbers_2 = [17, 13, 19, 17, 19, 7, 10, 11, 5, 11, 18, 13, 3, 12, 19, 0, 17, 1, 12, 12, 5, 12, 1, 1, 0, 14, 5, 4, 9, 9, 3, 10, 9, 9, 12, 16, 9, 17, 12, 11, 2, 2, 14, 8, 11, 12, 7, 1, 16, 2, 14]

puts count_duplicates(numbers_2)
