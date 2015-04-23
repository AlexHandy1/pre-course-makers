# Your task is to split the chocolate bar of given dimension n x m into small squares. 
# Each square is of size 1x1 and unbreakable. Implement a function that will return minimum number of breaks needed.

# For example if you are given a chocolate bar of size 2 x 1 you can split it to single squares in just one break, 
# but for size 3 x 1 you must do two breaks.

# If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). 
# Input will always be a non-negative integer.

#steps
	#create function called break_chocolate takes two numbers
	#create area variable that gives number of 1*1 squares (n*m)
	#return number of breaks will be (area-1)
	#add validation for anything an if n*m = 0 or 1 then return zero
	#solution is that the amount of breaks will always take one less than the total area

def break_chocolate(n,m)
	number_squares = n*m

	if number_squares == 1 or number_squares == 0
		number_breaks = 0
		return number_breaks
	else
		number_breaks = number_squares - 1
		return number_breaks
	end
end

break_chocolate(5,5)
break_chocolate(7,4)
break_chocolate(0,1)
break_chocolate(1,1)