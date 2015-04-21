#take a string
#split first half and second half
#perform upper case and lower case
#bind back together

def sillycase(string)
	first_half = []
	second_half = []
	n = string.length 
	string.split('').each_with_index do |x, i|
		first_half << x if i < n/2.0
		second_half << x if i >= n/2.0
	end

	first_half_new = first_half.join('').downcase
	second_half_new = second_half.join('').upcase
	new_string = first_half_new + second_half_new
	return new_string
	# n = string.length
	# p string.length {|x| first_half << x if x <= n/2 }
	# p first_half

	#second_half =
end

sillycase("Brian")