#features 
	# - one block if statement, one block when statement
	# - functions - ideally have one passing into another
	# - include file manipulation
	# - include a module (call Ex26 and do something to a sentence that add to a file)

#game
	# - give the user the choice to play 1 of 2 games -- "1. Tennis Stat attack" or "2. File Slot Machine"
	# - "Tennis Stat Attack" will collect the users input for favourite tennis player, year career started
		# - In return for this input a function will calculate the estimated number of matches and games played and then feed into function for serves and winners hit across their career
		# - User will be invited to guess the outcome and if match a certain outcome will get a certain reward
	# - "File Slot Machine" - will take users input on a file that they want to enter into machine and then under each when option something different will happen to file
		# - One will just read and print file to screen
		# - One will write and add contents to the file
		# - One will empty the file
		# - One will do something new that search for

puts "Welcome, you have entered the game room"
puts "You get a choice of one of two games - Game 1: Tennis Stat Attack or Game 2: File Slot Machine"
puts "Please enter '1' to play Game 1 or '2' to play Game 2"
puts ">"

game_choice = $stdin.gets.chomp.to_i
game_validation = false

def tennis_stat_attack(player, career_start)
	puts "So your favourite player is #{player} and you think their career began in #{career_start}"
	puts "How many matches and games do you think they have played?"
	puts ">"
	user_matches = $stdin.gets.chomp.to_i
	user_games = $stdin.gets.chomp.to_i
	puts "You guessed #{user_matches} matches and #{user_games} games"

	avg_matches_per_year = 100
	avg_games_per_match = 20
	comp_matches = ((2015 - career_start) * avg_matches_per_year)
	comp_games = (comp_matches * avg_games_per_match)

	if user_matches == comp_matches && user_games == comp_games
		puts "Wow, you matched both, high five!"
	elsif user_matches == comp_matches || user_games == comp_games 
		puts "OK, you got one, good job!"
	else
		puts "Bad luck, the actual answer was #{comp_matches} and #{comp_games}"
	end
end

def file_slot_machine
	puts "Run game 2"
end

while (game_validation == false)
	if game_choice == 1
		game_validation = true
		puts "Great, you have chosen Tennis Stat Attack"
		puts "Please tell me your favourite tennis player and your best guess at when their career began?"
		puts ">"
		tennis_stat_attack($stdin.gets.chomp, $stdin.gets.chomp.to_i)
	elsif game_choice == 2
		game_validation = true
		puts "Great, you have chosen File Slot Machine"
		file_slot_machine
	else
		puts "Please enter either game 1 or game 2"
		game_choice = $stdin.gets.chomp.to_i
	end
end









