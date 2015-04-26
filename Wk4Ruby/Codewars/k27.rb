def weirdcase(string)
	array = []
	string.split('').each_with_index do |x, i|
		array << x.capitalize.insert(i+1) if x.scan()
		array << x.capitalize if i.even?
		array << x.downcase if i.odd?
	end
	p array.join
end

weirdcase("hello")
weirdcase("This is a Test")