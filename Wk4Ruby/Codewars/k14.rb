def array_diff(a, b)
	#passed two arrays
	#remove all values that are in list a and list b
	new_array = a - b
	return new_array
end

array_diff([1,2,2],[1])