# An isogram is a word that has no repeating letters, consecutive or non-consecutive. 
# Implement a function that determines whether a string that contains only letters is an isogram. 
# Assume the empty string is an isogram. Ignore letter case.

#steps
	#set-up function that takes a string
	#review previous methods to decide whether can do without converting to array
	#break-up each character and compare to remainder of the string
	#take an array of all the letters and count how many times appear in the string, if < 2

###NOT PASSED WRONG LANGUAGE###

def isogram(string)
	characters = string.downcase.split('')

	count = Hash.new(0)
	characters.each do |x|
		count[x] += 1
	end
	
	if count.values.any? {|x| x > 1}
		puts "This isn't an Isogram"
	else
		puts "This is an Isogram"
		return true
	end
end

isogram("isthisanisogram?")
isogram("abcde")