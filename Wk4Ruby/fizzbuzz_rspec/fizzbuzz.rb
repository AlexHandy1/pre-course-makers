#method based solution

def fizzbuzz(number)
	return "fizzbuzz" if is_divisible_by_fifteen?(number) #everytime I make this it has to go first or skips. Start from highest first to follow logic
	return "buzz" if is_divisible_by_five?(number)
	return "fizz" if is_divisible_by_three?(number)
	number
end


def is_divisible_by_three?(number)
	divisible(number, 3)
end

def is_divisible_by_five?(number)
	divisible(number, 5)
end

def is_divisible_by_fifteen?(number)
	divisible(number, 15)
end

def divisible(number, divisor)
	number % divisor == 0
end


1.upto(100).map {|num| puts fizzbuzz(num)}



# #my solution - works
# class Fizzbuzz
#   attr_accessor :min, :max
# 	def initialize(min, max)
# 		@min = min
# 		@max = max
# 	end

# 	def play
# 		@min.upto @max do |n|
# 			if n % 3 == 0 && n % 5 == 0
# 				puts "fizzbuzz"
# 			elsif n % 3 == 0
# 				puts "fizz"
# 			elsif n % 5 == 0
# 				puts "buzz"
# 			else
# 				p n
# 			end

# 			#didn't have the else which ensure that n was printed if it didn't hit all the other conditions
# 			# puts "fizz" if n % 3 == 0
# 			# puts "buzz" if n % 5 == 0
# 			# puts "fizzbuzz" if n % 3 == 0 && n % 5 == 0
# 		end
# 	end
# end 

# test = Fizzbuzz.new(1, 100)
# test.min
# test.max
# test.play

#steps
	#number from 1 to 100 everything that divides by 3 == fizz, everything by five == buzz, everything by 5 and 3 == fizz buzz
	#start with a range (give a min and a max in initialize if do it that way) e.g. @min = min, @max = max
	#min up to max range iterator each do 
