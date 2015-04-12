#key reference concepts with example code commented - focus on difficult/ hard to memorise areas vs comprehensive

# COMMAND LINE 
	# ruby xx.rb - runs chosen programme (remember need to be in the correct folder)
	# cd - gets to a folder, cd ~ gets you home, cd .. goes up a level
	# pwd and ls - print and list out file components. Add full file length direction e.g. ls documents/programmes. Can use ls ~ to list from anwyhere
		# ls -l -A = -l is a switch to present in long form and -A is a switch to present all files
	# mkdir creates folder, rmdir removes it, mkdir - p I/like/files for multiple layers
	# pushd - go here but save where I was, popd - go back to where I was
		# if do 2 pushd in a row and go back to popd, takes first one, doesn't seem to capture last pushd
		# works in a stack - you still have to be above file to move around
		# essentially like a list pushd = go here and save this spot, popd go back to where last saved
	# use touch xx.txt to create a new file
	# can also use a function with > operator to create e.g. who > names.txt
	# copy = cp something to somewhere e.g. cp awesome.txt file/ or cp something to some name e.g. awesome.txt neat.txt 
		# with entire folders do cp -r file1 file2 - note the '/' only comes in when listing e.g. ls file/
	# mv = move file -- first parameter is file to be moved and second is where file moves too
	# less and cat are ways to view files e.g. less text.txt
		# cat can also be used to put text into files e.g. cat > list1 [then type in a bunch of text] cat >> list1 to continue appending
		# if cat is entered on its own e.g. cat > text.txt it will open up an input line and put into file
	# in UNIX, the dot means the current directory - means stay where you are
	# rm - deletes individual file, rm -rf deletes entire folders even if they still have files in them - does so without warning so be careful!
	# tail -f log.txt to check log for running programmes - can do for system too
	# 3 streams - stdin (input), stdout (output e.g. display), stderr (error stream)
	# can use pipes '|' to pass input into another function instead of as a parameter e.g. cat combined.txt | less > will print to new screen.
		# Can string multiple outputs together e.g. finding all files, using grep to search for those with specific element and then count e.g. wc -l
		# the '<' takes input from right to command on left, the '>' takes output from left and writes to right, the '>>' takes output from left and appends to right
	# wildcards '*' can be used to find files etc with specified attributes e.g. *.txt
	# grep - The "grep" command takes two parameters: the first is what you want to search for (in this case, the word "binary") and the second is what files you want to search through (in this case, the file "combined").
		# Strictly speaking, grep is taking not a string, but a regular expression as an input.
	# for permissions there are 10 spaces - the first is whether a directory or not ('d'), then it is read ('r'), write ('w'), execute ('x') for three classes of user (user (owner), groups, others)
		# superusers (seen as 'root' on my comp) can access all files and are dangerous
			# prefix commands as sudo to do this
	# have to use shebangs (see hello.rb) to tell command line what language is being used and where sits
	# env variables - variables that your command line just knows - can print with env and then echo e.g.$HOME
		# only last for a specific shell session - unless install as a profile like bash_profile which preloads
	# ps x shows all processes running on computer (add grep command creates a filter)	
	# PATH - a list of directories where the shell will be looking for the programs you ask it to run.
		#Every program that you can run from your command line without specifying where they are (ls, chmod, date, pwd, etc) are somewhere on the PATH.
	# vi on a file gives a virtual text editor
	# ARGV - give it arguments when call program e.g. ruby argv.rb here we go
		one, two, three = ARGV 

		puts "#{one} #{two} #{three}"

		one = $stdin.gets.chomp
		two = $stdin.gets.chomp
		three = $stdin.gets.chomp

		puts "#{one} #{two} #{three}"

# STRINGS
	# multiplying strings
	puts "Alex" * 5

	# interpolation is way to include variables in strings
	hey = "hey"

	puts "#{hey} there"

	# escape sequences 
	puts "Here is an example \\ of what happens when \' try \" stuff here \n hi \n huh \a so this \v does something too \n how about \t this \t now"

 # NUMBERS
	# even if state a float with integers will round down. Only changes when add decimal place - give 'right' answer.
	var = 9/2
	var1 = (9/2).to_f

	puts var
	puts var1

	# clever number functions (RAND) - always add one above to get say 1 - 100 - rand(1) = 0
	puts (rand(100) + rand(100) + rand(100))

	# modulo - Returns the remainder. Another way to say it is, "X divided by Y with J remaining." Commonly used to find multiples
	var2 = 7%2
	puts var2

	var3 = 10

	if var3 % 5 == 0
		puts "YAY, I divide exactly"
	end

	#squared
	puts 5**2

	#absolute - even if negative takes a positive
	puts((5-2).abs)
	puts((2-5).abs)

	# primes

	def prime(n)
 		puts "That's not an integer." unless n.is_a? Integer
  		is_prime = true
		  for i in 2..n-1
		    if n % i == 0
		      is_prime = false
		    end
		  end
		  if is_prime
		    puts "#{n} is prime!"
		  else
		    puts "#{n} is not prime."
		  end
	end

	# evens and odds

	my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	my_array.each { |x| puts x if x % 2 == 0 }
	my_array.each { |x| puts x if x % 2 != 0 }


	# 1..5 - exclusive and inclusive ranges have to be used with arrays
	for inclusive in (1..5)
		puts inclusive
	end

	(0...5).each do |exclusive| # excludes top number
		puts exclusive
	end

	(1..10).each { |num| puts num}

	# what does % do outside modulo? You will almost always use #{} to format your strings, but there are times when you want to apply the same format to multiple values. That's when %{} comes in handy.
# VARIABLES
	# basic variables rules
		# Variables cannot be a number e.g. 1 = two
		# You can add variables together but can't put on same line
			test = 1 
			test2 = 2 
			puts test + test2
	# variables can point to just about anything... except other variables
		x = 1
		y = x
		puts "#{x} + #{y}"
		
		x = "seven"

		puts "#{x} + #{y}" # y stays pointed to original x value of 1

	# Methods - basic local and global split is key
			hey = "I'm outside" # interestingly, if just put $sign in front and not in puts then print out string
		def local_global
			hey = "hey there" # Local - only accessible from certain methods
			puts hey
		end

		local_global
		puts hey

	# Classes - see class revision for examples
		# global - $global - can be accessed anywhere regardless of class or method
		# instance - @instance - can only be accessed with specific instance [a variable storing one call/ instance of class 
					# - e.g. test = Test.new] (e.g. def this_instance @instance end var.this_instance puts @instance)
		# class specific - @@specific - can only be accessed within specific class e.g. can be within multiple methods in a class
				# we can use a class variable to keep track of the number of instances of that class we've created.
		# assignment across classes
		# A method's local variables last until the method is finished. 
		# An object's instance variables, on the other hand, will last as long as the object does.

	# CONSTANTS
		I_AM_A_CONSTANT = "alex"
		i_am_a_constant = "ah"

		I_AM_A_CONSTANT = "Can I change?" # gives an error warning when you do

		puts I_AM_A_CONSTANT
		puts i_am_a_constant

	# conditional assignment
		ah = nil
		puts ah

		ah ||= "Got ya now"
		puts ah

# GETTING INPUT
	# ways to collect input
		resp = $stdin.gets.chomp
		resp_two = $stdin.gets.chomp.to_s
		puts resp_two

		resp_three =[$stdin.gets.chomp] # doesn't treat each space individually
		
		puts "Text to search through: " # treats each space individually
		text = gets.chomp

		words = text.split(" ")

		puts words
		puts words.length

		resp_three.each {|i| i * 3} 

		def response (first_name, second_name)
			puts "#{first_name}, #{second_name}"
		end 

		response($stdin.gets.chomp, $stdin.gets.chomp)

# LOGIC
	# boolean algebra
		if (true && true) == true
			puts "Remember this is only true value for &&"
		end

		if (false || false) == false
			puts "Remember this is the only false value for ||"
		end

		if !(true || false) == false
			puts "Don't forget simple inverse - work inwards"
		end

		if !(true && false) == (8**2) > (2**3)
			puts "Something tricky to work through...its true"
		end
	
	# basics (true, false, nil, if, else, elsif, end, while, until)
		# if something is false, it will not do that thing or run. By default, everything is true, unless stated as nil or false
		# false and nil are not the same thing: false means "not true," while nil is Ruby's way of saying "nothing at all."

		if true
			puts "true"
		else
			puts "false"
		end

		x = false

		while (x == false)
			puts "gimmie something >>"
			reply = $stdin.gets.chomp

			if reply == "good"
				x = true
				puts "you get a big number"

				puts 1000*1000

			elsif reply == "bad"
				puts "you get a small number"

				puts 10*1
			else
				puts "nope, keep looping"
			end
		end

		y = false

		until (y == true)
			puts "gimmie something >>"
			reply_two = $stdin.gets.chomp

			if reply_two == "good"
				y = true
				puts "you get a big number"

				puts 1000*1000

			elsif reply_two == "bad"
				puts "you get a small number"

				puts 10*1
			else
				puts "nope, keep looping"
			end
		end

	# shortened statements inc. ternary expression, case, when
		puts "xxx" if y == true
		puts "yyy" unless y == false
		puts  2 > 3 ? "true": "false"

		case reply
			when "good" then 
				puts "you get a big number" 
				puts 1000*1000
			when "bad" then 
				puts "you get a small number" 
				puts 10*1
			else puts "no, sorry"
		end


# OBJECTS
	# A distinguishing feature of objects is that an object's procedures can access 
		# => and often modify the data fields of the object with which they are associated
	# Object orientation uses encapsulation and information hiding. 
		# => Object-orientation essentially merges abstract data types with structured programming 
		# => and divides systems into modular objects which own their own data and are responsible for their own behavior.
	# Everything in ruby is an object even numbers, strings and classes themselves (an instance of the Class class)
	# object
		# Two meanings: the most basic type of thing, and any instance of some thing. Have methods and attributes (data). 
			# => Classes used to create and organisation these type of objects.
	# class
		# Tell Ruby to make a new type of thing.
	# instance
		# What you get when you tell Ruby to create a class.
	# def
		# How you define a function inside a class.
	# @
		# Inside the functions in a class, @ is a variable for the instance/object being accessed.
	# inheritance
		# The concept that one class can inherit traits from another class, much like you and your parents.
	# composition
		# The concept that a class can be composed of other classes as parts, much like how a car has wheels.
	# attribute
		# A property classes have that are from composition and are usually variables.
	# is-a
		# A phrase to say that something inherits from another, as in a "salmon" is-a "fish."
	# has-a
		# A phrase to say that something is composed of other things or has a trait, as in "a salmon has-a mouth."
	#examples (+ see oop_test.rb)
		#=> Class X(Y) "Make a class named ??? that is-a Y."
		#=> class X(object): def initialize(J) "class ??? has-a initialize that takes ??? parameters."
		#=> class X(object): def M(J) "class ??? has-a function named ??? that takes ??? parameters."
		#=> foo = X() "Set foo to an instance of class ???."
		#=> foo.M(J) "From foo get the ??? function, and call it with parameters ???."
		#=> foo.K = Q "From foo get the ??? attribute and set it to ???."

# METHODS - does something to an object
	# initialize - this is a way of setting up new objects that can be called upon - commonly used in classes
		def initialize
			@numbershowing
			@@rolls = 0
		end

	# creating/ passing arguments
		def sum(a, b)
			puts a + b
		end
		
		sum($stdin.gets.chomp.to_i,$stdin.gets.chomp.to_i)

	# return rules - critical to understand how manipulate objects/ variables that come out
		# Every method has to return something, even if it's just nil.
		# by default = the value returned from a method is simply the last line of the method
		# can set variables that method returns into
		def daily_budget_split(total)
			food = total*0.4
			drink = total*0.3
			other = total*0.3

			puts "you can spend £#{food} on food, £#{drink} on food and £#{other} on other stuff."

			return food, drink, other
		end

		def daily_budget_converter(convert_food, convert_drink, convert_other)
			total = convert_food + convert_drink + convert_other
			puts "your total budget is £#{total}"
		end


		puts "What is your daily budget?"
		puts ">>"
		total = gets.chomp.to_i

		convert_food, convert_drink, convert_other = daily_budget_split(total)
		daily_budget_converter(convert_food, convert_drink, convert_other)


	# print vs puts
		puts "I'm on a line"
		puts "I'm on a separate line"
		print "the"
		print "same"
		print "line"

	# private vs public (see cd OOP 2)
		#=> Public methods can be called by anyone—there is no access control. Methods are public by default (except for initialize, which is always private).
		#=> Protected methods can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.
		#=> Private methods cannot be called with an explicit receiver. Because you cannot specify an object when using them, private methods can be called only in the defining class and by direct descendents within that same object.


	# method structure in programs e.g. games
		#see ex36 as way to put methods within other methods to kick off different sections
			#=> start function at bottom can launch into different sections

	# self - The keyword self in Ruby gives you access to the current object
		# => *find good example that understand

	# splat arguments - lets you put in multiple args to a parameter
		def what_up(greeting, *bros)
	  		bros.each { |bro| puts "#{greeting}, #{bro}!" }
	  	end
	 
		what_up("Alex", "Justin", "Ben", "Kevin Sorbo")

# ARRAYS  - "An ordered array of things you want to store and access randomly  or linearly by an index"
	
	# structure and iterating
		tester = ['give', 'myself', 7, 'things', 'to', 'play', 'with']
		tester_two = ['here', 'is', 'something', 'else', 'if', 'you', 'need', 'it']

		tester.each do |h|
			puts "#{h}"
		end

		tester.each { |g| puts "#{g}"}


		for i in tester 
			puts "#{i}"
		end

		puts tester.length
		puts tester[1]
		puts tester[-2] # counts back from the last index e.g. 2 back from the 6th element
		tester.push("Alex")
		puts tester[7]
		tester.pop() # removes last element from array
		puts tester[7]


		def join_split(array)
			array_new = array
			testing_two = array_new.join('/')
			puts testing_two

			testing_three = testing_two.split('/')
			puts testing_three
		end

		join_split(tester_two)

		def convert_sort_reverse_select(numbers)
			array_test = numbers.to_a

			puts array_test.sort
			puts array_test.reverse

			array_reverse = array_test.reverse!
			puts array_reverse

			if array_reverse.length > 5 
				array_reverse.delete(0..3)
			end	

			puts array_reverse
			return array_reverse
		end

		def receiver(array_reverse)
			puts "The array created is #{array_reverse.length}	characters long"
			# array_reverse.select { |a| a > 3 } does this not work because it is a set of integers?
		end

		numbers = "2", "5", "1", "3", "4", "6", "7"

		array_function = convert_sort_reverse_select(numbers)
		receiver(array_function)

	# .times
		5.times do 
			puts "Would be good to understand when else really useful?"
		end

		3.times {puts "This also works I presume?"}

	# next
		puts 2.next
		puts ("a").next

	# multi-dimensional arrays
		array = ["You", "can", "have"], ["multi", "dimension"], ["arrays", "to", "do", "stuff", "with"]

		array<<("Alex") # concatenation operator
		puts array
		puts array[0][1]

	# advanced sorting - combined comparison operator
		one = 'a'<=> 'b'
		two = 1 <=> 1
		three = 0 <=> 1
		four = 2 <=> 1

		puts one 
		puts two
		puts three
		puts four

# HASHES (=> as final test, edit and re-work Dict function in ex39)
	# essentially key, value combinations that act like a dictionary and aid storing and searches for data structures
		#==> you can use anything as an index to get something out of an array

	# set-up, creating new hashes and iterating to pull data out
		hasher = {Alex: 90, James: 80, Jack: 75, Ben: 60}
		alt_hash = Hash.new
		comp_hash = {90 => "great score", 80 => "good score", 75 => "decent score", 60 => "average score"}

		hasher[:Jim] = 82 # how add symbol specific? Do you do it this way?
		alt_hash["first"] = 1
		alt_hash[Time.new] = 2
		alt_hash[true] = 3

		puts hasher
		puts alt_hash
		puts comp_hash[90]
		puts comp_hash[60]

		hasher.each do |name, score|
			puts "Congrats #{name}, you got #{score}"
		end

		hasher.each do |name, score|
			comment = comp_hash[score]
			puts "#{name} got a score of #{score} which is a #{comment}"
		end

	# taking input and organising by symbols and test if includes something then sort if does
		#=> symbols are not the same as strings, 
			#=> They're immutable, meaning they can't be changed once they're created;
			#=> Only one copy of any symbol exists at a given time, so they save memory;
			#=> Symbol-as-keys are faster than strings-as-keys because of the above two reasons.

		puts "What do you want to do?"
		resp = $stdin.gets.chomp

		case resp

			when "change" #consider adding if statement to add comment + consider adding ongoing ability to store hash

				puts "What is the name and score for the next student?"
				name = $stdin.gets.chomp.to_sym
				score = $stdin.gets.chomp.to_i

				if hasher[name.to_sym].nil?
					hasher = [name: score]
					puts "Thanks for adding"
					puts "#{name} got a score of #{score}"
				else
					puts "This name already exists"
					puts "Are you sure you want to proceed?"
					reply = $stdin.gets.chomp
						if reply == "yes"
							hasher[name.to_sym] = score.to_i
							puts "#{name} now has a score of #{score}"
						else 
							puts "Ok, no problem we'll stop"
						end
				end

			when "sort"
				hasher.each do |name, score| 
					hasher[name] += 10
				end
				puts hasher

				sorted_hash = hasher.sort_by { |name, score| score}
				print sorted_hash.reverse!

		end


# CLASSES - also refer to classrevision.rb
	# inheritance, is_a, has_a + passing of variables/ objects, includes super and attr_reader/ attr_writer (something complicated...)
		
		module Superboss 
			def horse_head
				puts 'You betrayed us, this horse head is a warning'
			end
		end	
		# for mixin example

		class Big_boss

			def master
				puts "The Big Boss is in charge"
			end

			def take_charge
				puts "But don't forget, I'll still kill you if you screw me"
			end

		end


		class Boss < Big_boss	

			def take_charge
				puts "The Boss is in charge"
				super()
			end

		end


		class Little_boss < Boss # interesting example of multiple inheritance (takes on master)

			def take_charge
				puts "The Little Boss is in charge now"
				super()
			end
		end

		class Person
		  attr_accessor :name

		  def greeting
		    puts "Hello #{@name}"
		  end

		  def initialize
		  	@impersonate = Big_boss.new()
		  end

		  def master
		  	@impersonate.master()
		  end

		  def overtake_mafia
		  	puts "Aha, I'm the boss now!"
		  end
		end

		person = Person.new
		person.name = "Dennis"
		person.greeting 
		person.master
		person.overtake_mafia

		mafia = Big_boss.new()
		mafia_two = Boss.new()
		mafia_three = Little_boss.new()

		mafia.master
		mafia_two.master
		mafia_three.master

		mafia_two.take_charge
		mafia_three.take_charge

		# for mixin
		mafia.horse_head
		mafia_two.horse_head
		mafia_three.horse_head

	# time

	def christmas
		christmas_day = Time.mktime(2015, 12, 25)
		today = Time.new

		time_to_christmas_secs = christmas_day - today
		puts time_to_christmas_secs		
		convert = ((60*60)*24)

		days_to_christmas = time_to_christmas_secs/convert

		puts days_to_christmas.to_i
	end

	christmas


# MODULES - You can think of a module as a toolbox that contains a set methods and constants.
	# require
		require "./revision_one.rb"
		require "./mystuff.rb"

		MyStuff.apple() # do you have to have the capital? Do you have to have the .apple extension
		puts MyStuff::TANGERINE # calling a constant because in module, by definition, should always stay the same

		Revision.test($stdin.gets.chomp)
		puts Revision::WHAT
		
		puts Math::PI # some modules already exist in ruby without having to require them

	# can also use include to get access to certain sets of constants and methods without having to preprend (e.g. Maths:: PI becomes just PI)
		class Arth
			include Math 

			def pie
				puts PI
			end
		end

		superpie = Arth.new()
		superpie.pie

	# mixins - when you take behaviour from modules into classes to add additional behaviour (see earlier mafia example)


# BLOCS, PROCS, LAMBDAS (Friday)
	# In particular, you can't pass methods into other methods (but you can pass procs into methods), and methods can't return other methods 
		# (but they can return procs). This is simply because procs are objects; methods aren't.
		# Procs are objects, blocs are not - means you can assign variables, methods etc to procs in addition to passing into methods.
		# You can assign multiple procs to method parameters because they mean something on their own, blocs cannot
		# Lambdas count the number of arguments passed in whereas procs won't throw an error and will just return nil
		# Lambas‘return’ triggers the code right outside of the lambda code (defers to last thing method returns - see example) 
			# whereas with procs only trigger code where being executed as part of their return function within a method - keeps control

	# blocs
		bloc = ['I', 'am', 'just', 'a', 'bit', 'of', 'code']

		bloc.each {|x| puts x}

	# yield

	def yielder
		puts 'yo yo yo'
		yield
		puts 'hey im back'
	end

	yielder {puts 'I wonder if this works for everything?'}

	def double(n)
    	yield(n)
	end

	double(5) { |n| n*2}

	# procs - are objects in their own right so can pass them to methods etc
	def practice (superProc)
		puts 'I got a new trick'

		superProc.call

		puts 'Yeah, look at that, I can take whatever you come up with'
	end

	christmas = Proc.new do
		christmas_day = Time.mktime(2015, 12, 25)
		today = Time.new

		time_to_christmas_secs = christmas_day - today
		puts time_to_christmas_secs		
		convert = ((60*60)*24)

		days_to_christmas = time_to_christmas_secs/convert

		puts days_to_christmas.to_i
	end

	practice(christmas)

	# when a method expects a block use the &symbol to convert to proc and also convert symbols to blocks (below)
	numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	strings_array = numbers_array.map(&:to_s)

	puts strings_array

	# lamdas -  a lambda checks the number of arguments passed to it, while a proc does not.

	def batman_ironman_proc
	  victor = Proc.new { return "Batman will win!" } # when a proc returns, it does so immediately, without going back to the calling method.
	  victor.call
	  "Iron Man will win!" 
	end

	puts batman_ironman_proc

	def batman_ironman_lambda
	  victor = lambda { return "Batman will win!" }
	  victor.call
	  "Iron Man will win!" # when a lambda returns, it passes control back to the calling method; 
	end

	puts batman_ironman_lambda


# FILE MOVEMENT

	filename = ARGV.first

	text = open(filename)

	puts 'opened this #{filename} file'
	puts text.read

	text.close()

	puts 'now a different file'
	file_new = $stdin.gets.chomp

	text_new = open(file_new)
	puts text_new.read

	text_new.close()

	filename = ARGV.first
	target = open(filename, 'r+')
	target.truncate(0)

	print "line 1: "
	line1 = $stdin.gets.chomp
	print "line 2: "
	line2 = $stdin.gets.chomp
	print "line 3: "
	line3 = $stdin.gets.chomp

	target.write(line1 + line2 + line3)

	target.close

	from_file, to_file = ARGV

	puts "Copying from #{from_file} to #{to_file}"

	in_file = open(from_file)
	indata = in_file.read

	puts "The input file is #{indata.length} bytes long"

	puts "Does the output file exist? #{File.exist?(to_file)}"
	puts "Ready, hit RETURN to continue, CTRL-C to abort."
	$stdin.gets

	out_file = open(to_file, 'w')
	out_file.write(indata)

	puts "Alright, all done."

	out_file.close
	in_file.close

#********

# OPEN QUESTIONS
	# command line
		# struggling again on copy from desktop to lower level temp file - how do you copy or move across file levels in one command? Can you?
		# with file movement can't get read and write working at same time - need to see some more advanced examples of this. What is best way to print back out?
		# how exactly does the dot operator work? Struggling with examples
		# using mv to copy didn't work for me - just said no file existed >> actually only works when you are in the specific directory
		# when using find command why does "*.txt" need "" but .mp3 doesn't?
		# why is PATH just ruby/ rvm?
		# struggled on grep streaming exercises - why can't get it to work? What is the exact output of grep? Lines?
			# How get to work >> In one line (using stream redirection), list files, select only the ones with the "txt" extension using grep, then count their number.?
		# how can you list all files within multiple hierarchies - just use find?
		# Is the idea that you can show permissions across a hierarchy? Does -p work for that?
		# Not clear how do this -  add the line "puts 'hello, world!'" into it using command line only. Run it by passing its name as an argument to ruby
		# if grep only allows searches in specific files, how search in files within directories without being in directory?
		# I used pipes to get count T envs to write to the new file and then moved - how use command substitution to do this? Do you need to?
	# recursives?
	# - Why is the """ significant? Doesn't seem to do anything other than ""?
	# logic
		# - in what scenarios do programs evaluate to true and false? When and why does something not run in false if only input is false (cd5)? 
		# - what happens if an object is not true?
		# - what does 'not' as a word/ iterator do? e.g. while not (goodAnswer) do xxx
	# constants
		# - when and why do you use these?
	# classes
		# - why do you need to initialize? How does this link into setting up of variables etc? Interesting that you have to initialize class @@variables but instance @variables get ignored?
		# - why would you use a normal variable (not global, local, instance or class)? How differs?
		# - how can you call on instance variables within multiple different methods? How define instance?
		# - do not fully understand use of .self in class definition?
		# - may be some confusion around exactly what the parameters of an instance are? (see classrevision)
		# - need to see an example of when would just want to use something in one instance
		# - need to see more examples of attr_reader, attr_writer and attr_accessor - not clear yet why exactly use?
	# still need to see a working example of how not using private or public could impact
	# are methods and functions different? E.g. is it that you can define own functions but methods are like .push on arrays?
	# what is happening in arrays2test.rb?
	# what is happening in oop_test.rb?
	# arrays
		# - what is the most effective way to take an input as an array?
		# - does .select not work because it is a set of integers?
		# - how does .map work?
	# modules
		# - what are the rules behind file directories for calling modules e.g. if I am not in the program file?
		# - do you have to capialise and abstract the module methods to get to work e.g. MyStuff.test method
		# - look into this - the extend keyword mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.
	# what is the Enumerable?
	# Array issue with permutation method
	# procs 
		# - need to better understand and have example of when a method expects a block use the &symbol to convert to proc and also convert symbols to blocks (below)
	# gems
		# - what is the PATH file for? Where is it?
		# - what exactly are the bin and lib files for?
		# - how do you get something to run!!
			# ERROR:  While executing gem ... (Gem::InvalidSpecificationException)
   			# ["bin/bin/First_Go"] are not files
   			# ERROR:  While executing gem ... (Gem::FilePermissionError)
    		# You don't have write permissions for the /Library/Ruby/Gems/2.0.0 directory
		# - why can't I install new gems? Do I need to sign-up for an account somewhere?
		# - what does a ruby version manager do? e.g RVM Have RVM installed but still can't get anything to run
		# - can't get Xcode to install
		# - why can't I enter password to command line to download Homebrew? >> doesn't show in command line!
		# - do I have a local git repository? How set-up? Is it linked to Heroku?
		# - where do all things I have installed e.g. PATH, homebrew, xcode, heroku sit in terms of file directory? How link together? How get to these from Mac interface?
	# javascript
		# - the 'this' functionality much like 'self' I find very unintuitive - what happens when don't use it might help?
		# - confusing that a class is basically just a stated function?
		# - how does a prototype in javascript compare to methods in ruby?
		# - not got the intuitive hang of passing things around objects in javascript and calling keys and values - differ to hashes
	# git
		# - why don't my online and offline repositories match/ sync on 3 levels - direct command line/ file adds, GUI adds, online repositories
		# - where exactly does it sit in file directory? How work alongside PATH?
		# - how would I take existing files (say programmes) and add to my git repository?
		# - added a bunch of stuff in command line - where has it gone?
		# - not sure if my git has been configured correctly to my account - how do I check?
		# - have cloned a branch to my local GitHub client but not clear how I edit and then pull back up to central repository?
		# - when you commit on the command line, where does it go?
		# - when first added fork of learning files code it didn't add as files? Couldn't access?
		# - how do you add and delete files in git? I used rm -rf? How then update to central repository?
		# - if a directory is already inside an initialised git file does it also have to be initialised? e.g. pre-course-makers/hello (does it mean I need to push to different area?)
		# - so how does authoring and branching work and how control? How do I send a pull/ push request to be integrated?
		# - is there a more efficient way to add folders and files rather than having to type each one exactly? >> git add --all, can also use wildcards e.g. git add *.txt
		# - how do I get rid of annoying files that aren't being tracked and don't want to add?
		# - what might cause you to add something explicitly in git but it not show up as tracked in status? (need to sort private files)
			# - how add 'untracked content'?
		# - if you do a hard reset, can you also cycle back forward in time? To what degree are all changes kept?
		# - why does it say that my private files for first challenge are not being tracked and even when I add it doesn't pick it up?
		# - what would you use a git server for? How is it linked to internet?
		# - SUBMODULES? why on GitHub when copy something over recursively (cp -r) can't access underlying files e.g. command-line exercises
			# - tried to reset but then wouldn't let me push and merge it and I had to pull back the incorrect file lay-out and reincluded commit history
		# - how exactly does rebasing work? Do you need to fetch upstream before submit pull request? When I pushed to origin master off my branch, where did it go?	
			# - when I try and compare my changes on fork online nothing shows up in comparison?
			# - can't seem to even get to push to my github now when I push to origin master despite being linked?
			# - managed to fix above when committed from pre-course, might be to do with where I initialised the git directory?
				# - **What are the implications of initialising at different levels? (tried both for Wk3)
					# - didn't work when tried to initialise and add new remote origin, got to be clickable when all run from pre-course
					# - can update, commit and push from inside this file though so seems like it is correct
				# - How I did Week 3 => mdkir Wk3 Ruby, cd .. (to pre-course already initialised and linked), git add Wk3Ruby, gc -m, git push.
				# - Then was able to push from Wk3 Ruby file
			# - why doesn't my branch I created show up on github?
			# - Git doesn't have a command line option to issue pull requests. - is this the truth? When tried to push it didn't find it?	
			# - is it because I put it into my own folder?
		# - Your branch is ahead of 'origin/master' by 4 commits - why when merge does it not bring it with it? Is this the remote origin? >> YES!
		# - Are you able to commit as a marker without changing anything?
		# - When you checkout and move around tags and says 'Head detached' what are implications of this? (lose gs tracking of how far it is ahead from origin and haven't seemed to get that example working properly)
		# - Why won't it let you push a specific branch ahead of master? What happens if you set upstream remote? (Git push origin branch worked)
		# - My lower level directory has a different remote - is that OK? 
		# - Your branch is based on 'origin/master', but the upstream is gone - what does that mean?
		# - Still not 100% clear on ways you can use upstream and where exactly gets pushed too e.g. difference between pushing to local origin/ fork vs the original remote upstream
		# - As a repository manager, how do you manage pull requests?
		# - why when I added cat to my Octocat does it not show up as a file - is it because repository is sitting elsewhere on my Github?
			# - again when tried to do this for Ruby-Kickstart (e.g. forked, cloned into Wk3Ruby part of pre-course existing repo, set up new remotes origin, upstream, precourse. Pushes to origin, doesn't push to precourse properly from online)
			# - solution is - I have to push from Ruby-Kickstart folder into repo
			# hint: Updates were rejected because the remote contains work that you do
			# hint: not have locally. This is usually caused by another repository pushing
			# hint: to the same ref. You may want to first integrate the remote changes
			# hint: (e.g., 'git pull ...') before pushing again.
			# hint: See the 'Note about fast-forwards' in 'git push --help' for details.
	# File movement
		# - what is a more efficient way to write to a file and then read it straight away? Currently having to close (to save) and then ask for file again to be reopened under a new variable