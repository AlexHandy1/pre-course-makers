#watermelon
#build a function that takes 1 integer between 1 and 100
#tests if that number can be split into two even parts 
#when divide the number by two is the result divisible by two?
#AGAIN - struggling on the maths to actually justify permutations

def watermelon(n)
	if (n.to_f / 2.0) % 2.0 == 0
		p "true"	
		return true
	else
		p "false"
		return false
	end
end

watermelon(2)
watermelon(4)
watermelon(5)
watermelon(88)
watermelon(100)
watermelon(67)
watermelon(99)
watermelon(90)
watermelon(10)
watermelon(32)

