if (true && true) == true
	puts "This is the only instance where comes to true"
end

if (false || false) == false
	puts "This is the only instance where comes to false"
end

if !(true || false) == false
	puts "Inverse just switches around, work from inside out"
end

if !(true && false) == (8**2) > (2**3)
	puts "Bit harder, equals true"
end