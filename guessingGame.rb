#Challenge 5 - Guessing Game

#Create a program that asks the user to guess a number between 1 and 100. 
#Once the user guesses a number, 
#the program should say, higher, lower, 
#or tell the user that he got the number correct. T
#he user should continue to make guesses until he guesses correctly. 
#Also, once the user guesses correctly, the program should print the number of guesses 
#needed to arrive at the correct answer. 

def guessingGame()
	# Track number of tries
	tries = 1;

	# Generate a random number to start the game off.
	secretNumber = rand(0..100)

	puts "Guess a number between 1 and 100"

	while true
		puts "Enter 'q' to end the game and see the secret number"
		guess = gets.chomp()

		if guess.to_i == secretNumber
			puts "Bingo Bango! The secret number was #{guess}"
			puts "You got it in #{tries} tries"
			break;
		elsif guess == 'q'
			puts "The secret number is: #{secretNumber}"

			puts "Play again? (y/n)"
			replay = gets.chomp()
			
			unless replay == 'y' || replay == 'n'
				puts "Play again? (y/n)"
				replay = gets.chomp()

			else
				if replay == 'y'
					guessingGame()
				elsif replay == 'n'
					puts "Game Over"
					break;
				end
			end
		elsif guess.to_i < secretNumber
			puts "Guess a higher number"
			tries += 1
		elsif guess.to_i > secretNumber
			puts "Guess a lower number"
			tries += 1
		end	
	end
end