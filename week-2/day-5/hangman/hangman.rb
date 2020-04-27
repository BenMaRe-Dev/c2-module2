class Hangman
  LETTERS = ("a".."z").to_a

  attr_accessor :user_attemps

  def initialize
    @word = get_word
    @guessed_letters = []
    @word_revealed = []
    @level = nil
  end

  def start
    ask_level
    calc_attemps
    reveal_letter
    wellcome_info
    attemps_info
    ask
    play_again
  end

  def get_word(word_length=12)
    File.read("5desk.txt")
        .split(" ")
        .select { |w| w.length <= word_length}
        .sample
        .downcase
  end
  
  def reveal_letter
    @word_revealed = @word.split("").map {|l| @guessed_letters.include?(l) ? l : "_"}
  end

  def update_guessed_letters
    @guessed_letters.push(@current_choice)
  end
  
  def show_progress
    "[ #{ @word_revealed.reduce('') { |acc, l| acc + "#{l} " } }]\n"
  end
  
  def good_choice?
    @word.include? @current_choice 
  end

  def ask
    puts "Please enter a letter:"
    @current_choice = gets.chomp.downcase
    if valid_input?
      check_guess
    else
      puts "Please enter only a single letter"
    end
    print show_progress
    ask if should_continue?
  end

  def check_guess
    if good_choice?
      update_guessed_letters
      reveal_letter
      puts "Good choice!"
      puts "You won" if win?
    else
      update_available_attemps
      puts "Now you just have #{@available_attemps} attemps"
      puts "Game over" if game_over?
    end
  end

  def valid_input?
    @current_choice.length == 1 && LETTERS.include?(@current_choice)
  end

  def should_continue?
    if win?
      false
    elsif game_over?
      false
    else
      true 
    end
  end

  def win?
    !@word_revealed.include?("_")
  end

  def game_over?
    @available_attemps.zero?
  end

  def update_available_attemps
    @available_attemps -= 1
  end

  def ask_level
    puts "Please enter your difficulty level"
    @level = gets.chomp
  end

  def calc_attemps
    attemps = if @level == "low" 
                3
              elsif @level == "mid" 
                0
              elsif @level == "high"
                -3
              end
    @total_attemps = @word.length + attemps
    @available_attemps = @word.length + attemps
  end

  def play_again
    puts "Would you like to play again?"
    response = gets.chomp
    if ["yes", "y"].include? response
      start
    else
      puts "Good bye!"
    end
  end

  def wellcome_info
    puts "Welcome to Hangman"
    puts "------------------"
    puts "Let's have some fun!"
    puts "Your word is #{@word.size} characters long"
    print show_progress
  end

  def attemps_info
    puts "You have #{@total_attemps} attemps to find out the right word"
    puts "Good luck!"
  end
end

game = Hangman.new
game.start