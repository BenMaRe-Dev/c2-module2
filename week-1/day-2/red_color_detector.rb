# frozen_string_literal: true

# Red color detector
# From Computer Science Programming Basics with Ruby
#
# There are many ways to store image data. One way is to store pixel data in a
# two dimensional array. The pixel data is itself a three-element array that describes
# the amount of red, green, and blue in the pixel. The amount of red, green, or blue is
# a number from 0 to 255. Here are a few example RGB values:
# red = [255, 0, 0] green = [0, 255, 0] blue = [0, 0, 255] black = [0, 0, 0]
# white = [255, 255, 255] yellow = [255, 255, 0] Suppose you have a picture and need
# to count red pixels. For a pixel to be red, it must be within the following RGB constraints:
#
# a. The R value must be greater than 100.
# b. The G and B values must each be less
# than the R value divided by 4. 6.5

def red?(array)
  red = array[0]
  green = array[1]
  blue = array[2]
  red > 100 && green < (red / 4) && blue < (red / 4)
end

def rgb_detector(sample)
  new_array = sample.flatten(1)
  new_array.inject(0) do |acc, sub_array|
    red?(sub_array) ? acc += 1 : acc
  end
end

sample = [
  [
    [65, 67, 23], [234, 176, 0], [143, 0, 0]
  ],
  [
    [255, 30, 51], [156, 41, 38], [3, 243, 176]
  ],
  [
    [255, 255, 255], [0, 0, 0], [133, 28, 13]
  ],
  [
    [26, 43, 255], [48, 2, 2], [57, 89, 202]
  ]
]

puts rgb_detector(sample)
