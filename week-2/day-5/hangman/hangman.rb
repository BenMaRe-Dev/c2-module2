class Hangman
  LETTERS = ("a".."z") && ("A".."Z").to_a

  attr_accessor :user_attemps

  def initialize
    @word = get_word
    @total_attemps = @word.length
    @available_attemps = @word.length
    @guessed_letters = []
  end

  def get_word(word_length=12)
    File.read("5desk.txt")
        .split(" ")
        .select { |w| w.length <= word_length}.sample
  end

  def update_guessed_letters
    @guessed_letters.push(@current_choice)
  end
  
  def show_progress
    @word_revealed = @word.split("").map {|l| @guessed_letters.include?(l) ? l : "_"}
    "[ #{ @word_revealed.reduce('') { |acc, l| acc + "#{l} " } }]\n"
  end

  def valid_guess?
    @word.include? @current_choice 
  end
  
  def start
    wellcome
    attemps
    guess
  end

  def guess
    puts "Please enter a letter:"
    @current_choice = gets.chomp
    if valid_guess? 
      update_guessed_letters
      puts "Good choice!"
      puts "You won" if win?
    else
      update_available_attemps
      puts "Now you just have #{@available_attemps} attemps"
      puts "Game over" if game_over?
    end
    print show_progress
    guess if continue?
  end

  def continue?
    !game_over? && !win?
  end

  def win?
    @word_revealed.include?("_") == false
  end

  def game_over?
    @available_attemps.zero?
  end

  def update_available_attemps
    @available_attemps -= 1
  end

  def wellcome
    puts "Welcome to Hangman"
    puts "------------------"
    puts "Let's have some fun!"
    puts "Your word is #{@word.size} characters long"
    print show_progress
  end

  def attemps
    puts "You have #{@total_attemps} attemps to find out the right word"
    puts "Good luck!"
  end
end

game = Hangman.new
game.start