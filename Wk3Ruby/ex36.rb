
    # On a sheet of paper or an index card, write a list of tasks you need to complete to finish the software. This is your to do list.
    # Pick the easiest thing you can do from your list.
    # Write out English comments in your source file as a guide for how you would accmplish this task in your code.
    # Write some of the code under the English comments.
    # Quickly run your script so see if that code worked.
    # Keep working in a cycle of writing some code, running it to test it, and fixing it until it works.
    # Cross this task off your list, then pick your next easiest task and repeat.

#FEATURES
	# - include manipulating an array and find some new methods
	# - include manipulating a hash (creating symbols) and find some new methods can use with it
	# - use a class to create an object (e.g. OrangeTree) that can be accessed across the game and use inheritance
	# - use some stock ruby modules (e.g. Math::PI) and get used to integrating into programmes
	# - include using a block, a proc, a yield and a lambda

### FLOW >> SMASH_TENNIS_DEMO ###
	# Initialize/ create player class
		#experiment with where you need to initialize player objective with 4 attributes (strength, speed, skill, confidence)
			#[Advanced option] - add age and build in time component
		#define functions and impact to attributes
			#gym function - builds strength
			#track function - builds speed
			#court function - builds skill and confidence
			#hit function - builds skill
			#practice match function - builds confidence
			#starter console function - launches top-level console
			#pre-training function - launches pre-training level
			#practice session function - launches practice level
			#enter tournament function - launches tournament level enters a match and provides one of 3 outcomes dependending on attributes
	# Starter Console (top-level function - expanded here)
		#puts a welcome to the game
		#explains levels of the game and how progress - Pre-training, Practice Session with Pro, Tournament
		#give user option of which level they want to start on (validate input, try and use a hash)
		#set-up branches (when statement) so that when select certain option it launches a function to run each level
		#[Advanced option] > let user select bonus famous  players who have their own set of attributes
	# Pre-training (expanded here)
		#puts a welcome to this level
		#sets attribute values for this level if enter straight away >> strength 2, speed 2, skill 4, confidence 1
		#calls a certain number of functions based on input provide e.g. if hit gym builds strength. 
			#[Advanced option] > can I make this more interactive e.g. add things that do here. Can you keep adding and accumulating
		#sets parameters for when move to next level e.g. all on confidence - when confidence greater than 4 go to next level
			#if statement so that when hit a certain point calls function to launch next level
	# Practice session
		#puts a welcome to this level
		#sets attribute values for this level if enter straight away >> strength x, speed y, skill z, confidence min 4
		#calls a certain number of functions based on input provide e.g. if hit gym builds strength. 
			#[Advanced option] > can I make this more interactive e.g. add things that do here. Can you keep adding and accumulating e.g. while @under x then keep adding
		#sets parameters for when move to next level e.g. all on confidence - when confidence greater than 7 go to next level
			#if statement so that when hit a certain point calls function to launch next level
	# Tournmaent
		#launch enter tournament function

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
				level2_practice_session
			when :level3
				level3_enter_tournament
			end

	end

	def level1_gym 


	end

	def level1_track 


	end

	def level1_court 


	end

	def level2_hit 


	end


	def level2_practice_match 


	end

	def level1_pre_training
			puts "Welcome to Level 1..."

	end

	def level2_practice_session
			puts "Welcome to Level 2..."

	end

	def level3_enter_tournament
			puts "Welcome to Level 3..."
	end

end

Player.new


