def maskify(input)
	n = input.length
	if n > 4
		last_four = input.slice!((n-4)..n)
		input.gsub!(/./,"#")
		return input + last_four
	else 
		return input
	end
end

# maskify('4556364607935616')
# maskify('1')
# maskify('11111')
maskify('')
maskify('64607935616') 
maskify('Nananananananananananananananana Batman!')
maskify('Skippy')