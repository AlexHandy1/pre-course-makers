def number_loop(numbers_array, i, max, increment)
	while i < max
	  puts "At the top i is #{i}"
	  numbers_array.push(i)

	  i += increment
	  puts "Numbers now: ", numbers_array
	  puts "At the bottom i is #{i}"
	end
	return numbers_array # key to remember that to return output that can use need to store in a variable when call the function
end

numbers = []
numbers_array = number_loop(numbers, 0, 6, 1) # see example for comment

puts "The numbers: "

# remember you can write this 2 other ways?
numbers_array.each {|num| puts num }

### FOR LOOP VERSION ###
puts "moving to for loop"
numbers = []

(0...6).each do |i|
	 puts "At the top i is #{i}"
	 numbers.push(i)
	 puts "Numbers now: ", numbers
	 puts "At the bottom i is #{i}"
end

