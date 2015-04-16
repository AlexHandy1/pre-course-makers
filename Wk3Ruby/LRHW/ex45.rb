#FEATURES
	# - include manipulating an array and find some new methods - only if useful
	# - include manipulating a hash (creating symbols) and find some new methods can use with it
	# - use a class to create an object (e.g. OrangeTree) that can be accessed across the game and use inheritance (add new class)
	# - use some stock ruby modules (e.g. Math::PI) and get used to integrating into programmes (do something for tournament win)
	# - include using a block, a proc, a yield and a lambda (try for one of the other methods - again maybe tournamet win)

#FEATURES TO ADD (TO-DO LIST)
	# - try and restructure so each level is a separate class and that there is an engine/ map class that moves things around
		# - think about how what have learnt may be able to solve questions around how to get opponent working smoothly
	# - add a module reference (even if it is as a Mixin e.g. Class Player include Module opponent)

#KEY OPEN QU's
	# - How and when do you set-up an object (or hash) within which you can access variables (or symbols) that can call outside of class (e.g. player issue)
	# - How do you build variables within classes that can be accessed/ compared directly within an inherited class (e.g. Opponent vs Player)
	# - What does super do?


### MAIN PROGRAMME ###

class Player

	def initialize
			puts "Welcome to SMASH TENNIS DEMO"
			puts "What's your name?"
			puts ">"
			user_name = $stdin.gets.chomp
			@user_name = user_name

			puts "thanks #{@user_name}, we are just creating your player..."

			#research whether useful to use an object or hash here

			@strength = 2
			@speed = 2
			@skill = 4
			@confidence = 1

			puts "Your player #{@user_name} has been created and he has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"
			start_console
	end

			attr_accessor :strength #lets me access individual variable through an instance
			attr_accessor :speed
			attr_accessor :skill
			attr_accessor :confidence

	def start_console
			puts "Now your player has been created, you have some options"

			puts "There are 3 levels in the game 1: Pre-training, 2: Practice Session and 3: Tournament"
			puts "The aim is to get your player to improve their attributes so they can get to the end of the Tournament and win!"
			puts "Given this is a demo, you can choose to start at any level"
			puts "Do you understand?"
			answer = $stdin.gets.chomp
			understand = false

			while understand == false
				if answer == "YES"
					understand = true
				else
					puts "Please re-read the instructions on your screen and when you understand answer 'YES'"
					answer = $stdin.gets.chomp
				end
			end

			#initially tried to make this a CONSTANT (like in ex23) but said it was dynamic. Still works this way but worth revisiting
			options = {
				:'1' => :level1,
				:'2' => :level2,
				:'3' => :level3
			}

			choice = nil

			until options.keys.include?(choice)
				puts "1: Pre-training"
				puts "2: Practice Session"
				puts "3: Tournament"
				puts "Please select your level"
				puts ">>"

				choice = gets.chomp!.to_s.upcase.to_sym
			end

			choice = options[choice]

			case choice
			when :level1
				level1_pre_training
			when :level2
				@strength += 2
				@speed += 2
				@skill += 2
				@confidence +=2
				level2_practice_session
			when :level3
				@strength += 5
				@speed += 5
				@skill += 5
				@confidence += 5
				level3_enter_tournament
			end

	end

	def level1_gym 
		puts "Go to the gym..."
		@strength += 2
	end

	def level1_track 
		puts "Go to the track..."
		@speed += 2
	end

	def level1_court 
		puts "Go to the court..."
		@skill += 2
		@confidence += 2
	end

	def level2_hit 
			puts "Go have an intense hit on court"
			@strength += 3
			@speed += 3
	end


	def level2_practice_match 
			puts "Go have a full practice match - you're almost ready!"
			@skill += 3
			@confidence += 3
	end

	def level1_pre_training
			puts "Welcome to Level 1..."

			puts "You get three goes to train your player for the next level"
			puts "You can train your player in the gym, track or court by entering 'Gym', 'Track' or 'Court'"
			
			#NON INTERACTIVE VERSION#
			prompt = "Hit Enter >>"

			puts "First, your player needs to go the gym"
			puts prompt
			$stdin.gets.chomp
			level1_gym
			puts "Awesome, now your player has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"

			puts "Now, your player needs some time on the track"
			puts prompt
			$stdin.gets.chomp
			level1_track
			puts "Awesome, now your player has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"

			puts "Lastly, your player needs to get some practice on court"
			puts prompt
			$stdin.gets.chomp
			level1_court
			puts "Awesome, now your player has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"


			#INTERACTIVE VERSION - WIP#

			#issue about how get back into the while loop from function that call - get stuck in current structure, how approach?
				# goes = 0
				# goodAnswer = false
				# level1_choice = nil

				# while goes <= 3 && goodAnswer == false
				# 	puts "Please enter Gym, Track or Court"
				# 	puts ">>"
				# 	level1_choice = $stdin.gets.chomp

				# 	if level1_choice == "Gym"
				# 		goes += 1
				# 		level1_gym
				# 		goodAnswer = true
				# 	elsif level1_choice == "Track"
				# 		goes += 1
				# 		level1_track
				# 		goodAnswer = true
				# 	elsif level1_choice == "Court"
				# 		goes += 1
				# 		level1_court
				# 		goodAnswer = true
				# 	else
				# 		puts "Please enter Gym, Track or Court"
				# 		puts ">>"
				# 		level1_choice = $stdin.gets.chomp
				# 	end
				# end
						
				if @skill >= 6 #add parameters to push up to the next level
						puts "Well done, you can progress to the next level"
						level2_practice_session
				end

	end

	def level2_practice_session
			puts "Welcome to Level 2..."
			puts "So your player now has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"
			puts "They still need to improve to enter a tournment though so lets get going"

			#NON INTERACTIVE VERSION#
			prompt = "Hit Enter >>"

			puts "Now, your player needs to go for an intense hit"
			puts prompt
			$stdin.gets.chomp
			level2_hit
			puts "Awesome, now your player has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"

			puts "Ok, before the tournament your player needs to have a full practice match"
			puts prompt
			$stdin.gets.chomp
			level2_practice_match
			puts "Awesome, now your player has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"


				if @skill >= 9 #add parameters to push up to the next level
							puts "Well done, you can progress to the next level"
							level3_enter_tournament
				end
	end

	def level3_enter_tournament
			puts "Welcome to Level 3..."
			puts "So your player now has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"
			puts "You are now ready to enter your first tournament!"
			puts "Do you want to enter the tournament?" #advanced feature would be to allow people to go back up and down levels? Add variable in parameters called acceptance that set true or false?

			entry = $stdin.gets.chomp

			if entry == "YES"
					puts "OK good luck..."
				if @confidence > 5 #PLACEHOLDER - update to >> certain attributes greater than opponent object that set-up then win else lose
						puts "Congratulations, you win the first match in your tournament!"
						puts "If you want to keep playing SMASH TENNIS, go to buysmashtennis.com!"
				else 
						puts "Ah back luck, you needed more confidence"
						puts "If you want to keep playing SMASH TENNIS, go to buysmashtennis.com!"
				end
			else 
				puts "Ok thanks for playing the SMASH TENNIS DEMO!"
			end

			# $player = TPlayer.new(
			# 						:strength => @strength,
			# 						:speed => @speed,
			# 						:skill => @skill,
			# 						:confidence => @confidence
			# 					)
			# puts $player
			# return $player
	end

end

class Opponent < Player
	# attr_accessor :name #option to add in name acceptance if get basics working
	def initialize
			@opp_strength = 2
			@opp_speed = 2
			@opp_skill = 4
			@opp_confidence = 1
	end
			attr_accessor :opp_strength #lets me access individual variable through an instance
			attr_accessor :opp_speed
			attr_accessor :opp_skill
			attr_accessor :opp_confidence

	def test_gym 
		puts "Go to the gym..."
		@opp_strength += 2
	end

	def test_track 
		puts "Go to the track..."
		@opp_speed += 2
	end

	def name_check
		puts "Here is your opponent"
		puts "Your opponent has has #{@opp_strength} for strength, #{@opp_speed} for speed, #{@opp_skill} for skill and #{@opp_confidence} for confidence"
	end

	$tester = Proc.new do |ignore|
			puts "Here is where could put a proc solution"
	end

	def initiate_tournament(tester) #how do you access and compare a variable from one class in another class (e.g. Player attributes vs Opponent attributes)?
		#adding a closure through proc or lambdas could be one solution
		puts "You are going to play the first player"

		tester.call
		#practice a proc, lambda and/ or bloc here

		# if user_player.strength > opponent.opp_strength
		# 	puts "You win!"
		# else
		# 	puts "Sorry, you lose"
		# end
	end
end 


user_player = Player.new
opponent = Opponent.new
opponent.name_check
opponent.test_gym
opponent.test_track
opponent.name_check
puts opponent.opp_strength
puts user_player.strength

if user_player.strength > opponent.opp_strength # works outside of the class instances - need to understand why
			puts "You win!"
else
			puts "Sorry, you lose"
end

opponent.initiate_tournament($tester)