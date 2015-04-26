def is_anagram(test, original)
	test_array = test.downcase.split('').sort
	original_array = original.downcase.split('').sort

	if test_array - original_array == [] && test_array.length == original_array.length
		#puts "This is an anagram"
		return true
	else
		#puts "This is not an anagram"
		return false
	end

end

is_anagram('Creative', 'Reactive')
is_anagram('ound', 'round')

#steps
	#break up the string into an array of elements
	#compares both array elements
	#if no difference then return true