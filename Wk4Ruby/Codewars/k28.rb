def filter_list(l)
  # return a new list with the strings filtered out
  # l.reject { |x| x.is_a? String }

  array = []
  l.each do |x|
  	array << x if x.is_a? Integer
  end
  
  p array

end

filter_list([1,2,'aasf','1','123',123])

#steps
	#set-up a basic conditional loop that tests if is a string (try using inject or map) and stores only Integers