class Game
  def initialize
    @letters = ("a".."z").to_a
    @word = words.select { |w| w.length <= 12}.sample
    @attemps = @word.length
  end

  def words
    words = File.read("5desk.txt")
    words.split(" ")
  end

  def display_long
    display_long = ""
    @word.size.times do
      display_long += "_ "
    end
    puts display_long
  end

  def guesses
    puts "Please enter a letter:"
    guess = gets.chomp


    right_guess = @word.include? guess
    if right_guess
    puts "bien" #<- placeholder // cuando se lleve a impresión la letra acertada, debe dejar de ser recibida por el programa. 
    guesses
    else
      puts "What a shame! That letter wasn't found" 
      @attemps -= 1
      puts "Now you just have #{@attemps} attemps"
      guesses
    end
  end

  def start
    puts "Welcome to Hangman"
    puts "Let's have some fun!"
    puts "-------------------"

    puts "Your word is #{@word.size} characters long"
    display_long
    puts " "
    attemps
    guesses
  end

  def attemps
    puts "You have #{@attemps} attemps to find out the right word"
    puts "Good luck!"
  end
end

game = Game.new
game.start