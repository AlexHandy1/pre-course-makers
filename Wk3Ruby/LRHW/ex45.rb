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

#STEPS
	#Review code for change requirements (DONE)
	#Restructure classes - Level 1, Level 2, Level 3 and split out existing code (DONE)
	#Rebuild initialisation to have a levels map and level engine (DONE)
	#Tweak return values in each Level (DONE)
	#Check everything runs through (DONE)
	#Learn how to fix variables issue >> when try and carry across classes it is not working
	#Review Opponent class - add module, try and get functionality working
	#Try and get interactive functionality going for building on player
	#Build test? >> set-up Rakefile in folder, see if can get working

### MAIN PROGRAMME ###

class Level_Engine
	def initialize(level_map)
		@level_map = level_map
	end

	 def play() #need to update all the variables
	    current_level = @level_map.opening_level()
	    last_level = @level_map.next_level('finished') #need to add to all levels

    while current_level != last_level
      next_level_name = current_level.enter() #this stores the return output value of enter method in each class (e.g. next scene name)
      current_level = @level_map.next_level(next_level_name) #this then initiated the next scene by using that return value in next scene method
	end

    # be sure to print out the last scene
    	current_level.enter() #need to add to all the new classes
  	end
end	

  class Start_Level

  	def enter
		puts "Welcome to SMASH TENNIS DEMO"
		puts "What's your name?"
		puts ">"
		user_name = $stdin.gets.chomp
		@user_name = user_name

		puts "thanks #{@user_name}, we are just creating your player..."

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
		level_map = {
			:'1' => :level1,
			:'2' => :level2,
			:'3' => :level3
		}

		choice = nil

		until level_map.keys.include?(choice)
			puts "1: Pre-training"
			puts "2: Practice Session"
			puts "3: Tournament"
			puts "Please select your level"
			puts ">>"

			choice = gets.chomp!.to_s.upcase.to_sym
		end

		choice = level_map[choice]

		case choice
		when :level1
			return 'level1'
		when :level2
			@strength += 2
			@speed += 2
			@skill += 2
			@confidence +=2
			return 'level2'
		when :level3
			@strength += 5
			@speed += 5
			@skill += 5
			@confidence += 5
			return 'level3'
		end

	end

end

class Level1

	def enter
		puts "Welcome to Level 1..."

		puts "You get three goes to train your player for the next level"
		puts "You can train your player in the gym, track or court by entering 'Gym', 'Track' or 'Court'"
		
		#NON INTERACTIVE VERSION#
		prompt = "Hit Enter >>"

		puts "First, your player needs to go the gym"
		puts prompt
		$stdin.gets.chomp

		level1_gym
	end

	def level1_gym 
		puts "Go to the gym..."
		#@strength += 2 not carrying through instance variables (threw an error)
		puts "Awesome, now your player has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"
		return 'level2'
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


end

class Level2
	
	def enter
		puts "Welcome to Level 2..."
		puts "So your player now has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"
		puts "They still need to improve to enter a tournment though so lets get going"

		#NON INTERACTIVE VERSION#
		prompt = "Hit Enter >>"

		puts "Now, your player needs to go for an intense hit"
		puts prompt
		$stdin.gets.chomp
		return 'level3'
	end

end

class Level3

	def enter
		puts "Welcome to Level 3..."
		puts "So your player now has #{@strength} for strength, #{@speed} for speed, #{@skill} for skill and #{@confidence} for confidence"
		puts "You are now ready to enter your first tournament!"
		puts "Do you want to enter the tournament?" #advanced feature would be to allow people to go back up and down levels? Add variable in parameters called acceptance that set true or false?

		entry = $stdin.gets.chomp
		return 'opponent'
	end

end

class Opponent
	
	def enter
		puts "Here is your opponent..."
		return 'finished'
	end


end

class Finish
	
	def enter
		puts "You reached the end"
	end

end

class Level_Map
	@@levels = {
    'start_level' => Start_Level.new(),
    'level1' => Level1.new(),
    'level2' => Level2.new(),
    'level3' => Level3.new(),
    'opponent' => Opponent.new(),
    'finished' => Finish.new(),
  }


  attr_accessor :strength, :speed, :skill, :confidence

	def initialize(start_level)
		@start_level = start_level
	end

	def next_level(level)
	    val = @@levels[level]
	    return val
	end

	def opening_level()
	    return next_level(@start_level)
	end
end

map = Level_Map.new('start_level')
match = Level_Engine.new(map)
match.play()