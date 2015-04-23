def collatz(number)
	 return 0 if number == 1
    while number > 1
      number = number.even? ? number / 2 : (number * 3) + 1
      puts number
    end
end

collatz(20)

#How get to iterate back on itself, eg keep doing until 
#Until the counter == 1
	#if even number then you need to divide n by 2
	#if an odd number then you need to multiply n by 3 and add 1