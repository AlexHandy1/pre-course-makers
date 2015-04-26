#steps (start with 1 to 100 >> can extend)
	#take an integer which will convert to a string
	#identify composite building blocks that can add together (e.g. 1 == I and return that multiplied up to a certain threshold)
	#tens + remainder
	#1-9 separate array = 
	#10 - 19 separate array 
	#could build it up via that logic but would take a long time

class RomanNumerals

	ROMAN_NUMERALS = {
		1000 => "M",
		900 => "CM",
		500 => "D",
		400 => "CD",
		100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I"
	}

	def converter(number)
		roman_numeral = ''
		
		ROMAN_NUMERALS.each do |k, v|
			(number / k).times {roman_numeral << v; number -= k}
		end
		roman_numeral

		#my first attempt
		# if number != 1 || number != 5 || number != 10 || number != 50
		# 	tens = number/10
		# 	remainder = number - tens * 10
			
		# 	if remainder == 5
		# 		remainder = 0
		# 		fives = 1
		# 	end

		# 	return "#{ROMAN_NUMERALS[10]*tens}" + "#{ROMAN_NUMERALS[5] * fives}" "#{ROMAN_NUMERALS[1] * remainder}"

		# else
		# 	return ROMAN_NUMERALS[number]
		# end
	end

end

RomanNumerals.new.converter(35)
RomanNumerals.new.converter(5)
