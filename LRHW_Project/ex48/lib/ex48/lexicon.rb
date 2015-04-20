# You want to take raw input from the user, carve it into words with split, 
# analyze those words to identify their type, and finally make a sentence out of them.

# Direction words: north, south, east, west, down, up, left, right, back
# Verbs: go, stop, kill, eat
# Stop words: the, in, of, from, at, it
# Nouns: door, bear, princess, cabinet
# Numbers: any string of 0 through 9 characters

# This scanner will take a string of raw input from a user and return a sentence 
# that's composed of an array of arrays with the (TOKEN, WORD) pairings. 
# If a word isn't part of the lexicon then it should still return the WORD but set the TOKEN to an error token. 
# These error tokens will tell users they messed up.

#steps
	#create Lexicon class with a scan method
	#take input from the user in the form of a string
	#turn that string into an array of words
	#iterate over each element and validate what type of word it is e.g. x == "north"
	#create if statement for each type of word and where call a method create new array where matched with a token
		# => What is the best method to create an array within an array? Map? Injection? Other?
		# => Potential >> array.each do |x|
							# push into new array with ["direction", x] if x == "north" && long list of others	

						 #  end
		# => Array.new(2) { Array.new(2) }       # => [[nil, nil], [nil, nil]]
		# => other potential would be to set-up arrays in advance for each tuple e.g. verbs = ["verb"] > wouldn't work as needs to be new multi-dimensional array

class Lexicon

	def convert_number(object)
	  begin
	    return Integer(object)
	  rescue
	    return nil
	  end
	end

	def scan(user_input)
		#convert_number(user_input)
		array = user_input.downcase.split(' ')
		directions = []
		verbs = []
		stop_words = []
		nouns = []
		numbers = []
		error = []
		#test = []

		array.each do |x|
			if x == "north" || x == "south" || x == "east" || x == "west" || x == "down" || x == "up" || x == "left" || x == "right" || x == "back" 
				directions << x.prepend('direction ').split(' ')
			elsif x == "go" || x == "stop" || x == "kill" || x == "eat" || x == "run"
				verbs << x.prepend('verb ').split(' ')
			elsif x == "the" || x == "in" || x == "of" || x == "from" || x == "at" || x == "it"
				stop_words << x.prepend('stop ').split(' ')
			elsif x == "door" || x == "bear" || x == "princess" || x == "cabinet"
				nouns << x.prepend('noun ').split(' ')
			elsif x.is_a? Numeric
				numbers << x.prepend('number ').split(' ')
			else
				error << x.prepend('error ').split(' ')
			end
		end

		all_input = [directions, verbs, stop_words, nouns, numbers, error]
			# directions << x.prepend('direction ').split(' ') if x == "north" || x == "south" || x == "east" || x == "west" || x == "down" || x == "up" || x == "left" || x == "right" || x == "back" 
			# verbs << x.prepend('verb ').split(' ') if x == "go" || x == "stop" || x == "kill" || x == "eat"
			# stop_words << x.prepend('stop ').split(' ') if x == "the" || x == "in" || x == "of" || x == "from" || x == "at" || x == "it"
			# nouns << x.prepend('noun ').split(' ') if x == "door" || x == "bear" || x == "princess" || x == "cabinet"
			# numbers << x.prepend('number ').split(' ') if x.is_a? Numeric #not working yet
			# #return directions, verbs, stop_words, nouns, numbers >> why when tried to return to break out did I get nothing?
			# error << x.prepend('error ').split(' ') if x != "north" || x != "south" || x != "east" || x != "west" || x != "down" || x != "up" || x != "left" || x != "right" || x != "back" ||
			# 										   x != "go" || x != "stop" || x != "kill" || x != "eat" ||
			# 										   x != "the" || x != "in" || x != "of" || x != "from" || x != "at" || x != "it" ||
			# 										   x != "door" || x != "bear" || x != "princess" || x != "cabinet"
			#return error
		#p test
		p directions
		p verbs
		p stop_words
		p nouns
		p numbers
		p error
		p all_input
		return all_input
	end

end

test = Lexicon.new
test.scan($stdin.gets.chomp)