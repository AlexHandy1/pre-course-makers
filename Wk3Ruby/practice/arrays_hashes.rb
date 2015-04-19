#DRILLS FOR COMMON ARRAY AND HASH PROBLEMS#

#You are given an array and you use the array to add keys and values iteratively to a new hash which you then invert
def method_1(array)
	p array
	easy_hash = Hash[*array] #need to remember the splat star when passing in
	puts easy_hash

	hash = Hash[array.map{|k| [k, "value"]}] #>> creates new key value pairs but not quite what looking for
	puts hash

	new_hash = {}
	array.each_with_index do |k,v|
		new_hash[k] = v
	end 
	puts new_hash.invert
end

#method_1(["This", "is", "an", "example", "array", "to a hash"])

#You manually create a new hash and then sort this hash by its values and create an array from it

def method_2
	hash = Hash.new(0)

	hash['one'] = 2
	hash['two'] = 1
	hash['three'] = 3
	puts hash

	sorted = hash.sort_by {|k,v| v} #returns an array 
	puts sorted.is_a?(Array)
end

#method_2

#You iterate over a hash's existing keys and values and create a third layer based on its index

def method_3
	hash_newb = {
		:test1 => :'testing1',
		:test2 => :'testing2',
		:test3 => :'testing3'
	}

		# hash_newb.inject({})

end

#method_3

#You are given a string, that you turn into an array, that you iterate over to create a hash based on count of word

def method_4(string)
	array = string.scan(/\w+/)
	hasher = Hash.new(0)
	array.each do |key|
		hasher[key] += 1
	end
	puts hasher
end

#method_4("This is a string right here here here thats going to become a hash hash hash")

#You make method to compare two arrays, flatten, compare and remove duplicates, then create a hash based on index

def method5(array1, array2)
	new_array = array1 | array2
	new_array2 = array1 & array2
	new_array3 = array1 - array2
	# puts new_array
	# puts new_array2
	#puts new_array3

	one_array = array1.zip(array2).flatten.uniq #merges side by side with zip and then .flatten puts into one array

	non_duplicate_hash = {}
	one_array.each_with_index do |k,v|
		non_duplicate_hash[k] = v
	end
	puts non_duplicate_hash
end
#method5 ["This", "is", "an", "example", "array", "one"], ["This", "is", "an", "example", "array", "two"]


#You are given a string and you iterate over it to provide an array of incremented characters e.g. given abcd >> ['b', 'c', 'd', 'e']

def method6(str)
	result = []
	str.each_char do |x| 
		result << (x.ord+1).chr
	end
	puts result
end
#method6("Herewego")

#You are given a two sentences, one as a string and another as an array and you replace punctuation with .scan and .gsub and then merge

def method7(str, array)
	#must be a quicker way but...

	#remove punctuation
	clean_string = str.gsub(/[[:punct:]]/, "")
	array.map! {|element| element.gsub(/[[:punct:]]/, "")}
	
	#combine
	clean_array = clean_string.scan(/\w+/).zip(array).flatten
	#remove whitespace
	final_array = clean_array.compact.delete_if{ |x| x == ''}
	puts final_array

end
#method7("Here are some strings with ? wrong !! stuff", ['H!E!R!E', 'W?E?', 'GO//'])


#You are given an array which you need to search filter by every odd index number

def method8(array)
	results = []

	array.length.times do |index|
		results << array[index] if index.odd?
	end
	puts results
	
	now_even = []

	results.each_with_index do |word, index|
		now_even << word if index.even?
	end
	puts now_even
end

# method8(["Blah", "This", "Blah", "Will", "Blah", "Work", "Blah", "More", "Blah", "Than", "Blah", "Once"])


#Injection example into a hash

def method9(array)
	hash = array.inject({}) {|a,i| a.update(i => i)}
	puts hash

	hash_within_hash = array.inject({}) {|a,i| a.update(i => a)}
	puts hash_within_hash
end

#method9(['Key One', '1', 'Key Two', '2', 'Key Three', '3'])

#Take a string of numbers, split into pairs and then select only those > 5

def method10(array)
	new_arrays = []
	array.select!{|x| x > 5}.each_slice(2) {|a,b| new_arrays << [a,b]}
	#p new_arrays
	return new_arrays
end

#You are given a multiple dimension array and you need to add 2 to each element of the array
def method11(arrays)

	new_array = arrays.each do |subarray|
		subarray.collect! {|a| a + 2}
	end
	p new_array

end

multiple_arrays = method10([2,3,3,2,4,5,6,7,10,15,17,21])
p multiple_arrays

method11(multiple_arrays)




