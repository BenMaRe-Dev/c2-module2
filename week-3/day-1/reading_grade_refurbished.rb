require "textstat"

def reading_grade(text)
  TextStat.coleman_liau_index(text)
end

text1 = "One fish. Two fish. Red fish. Blue fish." #(Before Grade 1)
text2 = "Would you like them here or there? I would not like them here or there. I would not like them anywhere." #(Grade 2)
text3 = "Congratulations! Today is your day. You're off to Great Places! You're off and away!" #(Grade 3)
text4 = "Harry Potter was a highly unusual boy in many ways. For one thing, he hated the summer holidays more than any other time of year. For another, he really wanted to do his homework, but was forced to do it in secret, in the dead of the night. And he also happened to be a wizard." #(Grade 5)
text5 = "Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, 'and what is the use of a book,' thought Alice 'without pictures or conversation?'" #(Grade 8)
text6 = "There are more things in Heaven and Earth, Horatio, than are dreamt of in your philosophy."# (Grade 9)
text7 = "It was a bright cold day in April, and the clocks were striking thirteen. Winston Smith, his chin nuzzled into his breast in an effort to escape the vile wind, slipped quickly through the glass doors of Victory Mansions, though not quickly enough to prevent a swirl of gritty dust from entering along with him." #(Grade 10)
text8 = "A large class of computational problems involve the determination of properties of graphs, digraphs, integers, arrays of integers, finite families of finite sets, boolean formulas and elements of other countable domains." #(Grade 16+)

puts reading_grade(text1)
puts reading_grade(text2)
puts reading_grade(text3)
puts reading_grade(text4)
puts reading_grade(text5)
puts reading_grade(text6)
puts reading_grade(text7)
puts reading_grade(text8
)