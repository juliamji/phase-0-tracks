#pseudocode
#we need a game class with several methods
#something to capture the secret word
#split on the word and have that stored
#if the letter guessed matches a character, print that character in its proper position to the screen
#if the guess does not match a character, decease/decrement the amount of turns by 1
#number of guesses should correspond to the word's length
#while guesses is less than the length of the word?
#when the number of guesses is reached, a 'you lose' message should be printed
#if all of the guesses are correct, a 'you win' message should be printed

class Game
	attr_reader
	attr_accessor 

	def initialize(secret_word)
		@secret_word = nil
		@guesses = 0
		@letter = nil 
		@letters = []
		@letters = secret_word.split(//)
	end

	def letter_checker(letters, guessed)
		won = true

		letters.each do |l|
			if guessed.include? l
				print l
			else 
				print "_ "
				won = false 
			end 
		end 
		puts ""

		return won

		while guesses <= letters.length == 0
    	letter = gets.chomp

	    	if letters.include? letter
	        	puts "You guessed one correct letter!"
	        	guessed << letter
	        	won = letter_checker(letters, guessed)

	       	if won
	          puts "You won!!"
	          break
	        end

	    	else
		        puts "Nope, sorry."
		        guesses += 1
		        puts "You have " + (10 - tries).to_s + " left"
	    	end
		end
	end 			
end 

#user interface
puts "Welcome to THE word game!"
puts "Player 1, write a secret word for Player 2 to guess"
secret_word = gets.chomp
letters = []
letters = secret_word.split(//)
puts "Player 2, make a guess"

game = Game.new 
game.letter_checker('duck', ['u','k','f'])