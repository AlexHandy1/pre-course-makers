[1,2,3,4,5].inject(0) {|a, e| puts "#{a} and #{e}"}
#accumulator only performs function if use as variable to store something

[1,2,3,4,5].inject(2) {|a, e| puts "#{a} and #{e}"}
#accumulator can start at a specified point of array

[1,2,3,4,5].inject({}) {|a, e| puts "#{a} and #{e}"}
#accumulator can be used to put in objects >> defaults to first index element

#can be used to create hashes >> injects a hash at element zero and then uses as accumulator which each element can then interact with
	#element item is then store in accumulator and returned in a index:index hash e.g. 1 => 1
hasher = [1,"a",Object.new,:hi].inject({}) do |hash, item|
  hash[item.to_s] = item
  hash
end

puts hasher

#why does this structure only spit out the last iteration? Because populates each time and refills
array_in_array = ["Here", "is", "one", "array"].inject([]) do |array, item|
	array << item + item
	array
end

p array_in_array

["Hi", "There", "Array"].inject([]) do |acc, elem| 
	acc << elem if elem.include?("Hi")
	p acc
end