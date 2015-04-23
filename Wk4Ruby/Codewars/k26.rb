# Create a function named divisors that takes an integer and returns an array with all of the integer's divisors(except for 1 and the number itself). 
# If the number is prime return the string '(integer) is prime' (use Either String a in Haskell).

#steps
	#take an integer
	#check what it divides by (check if prime forumla)
	#if it is prime return a string "Integer is prime"
	#if not prime then store in an array as iterate over it and return

require 'prime'

def divisors(int)
	return false if int == 1 || int == 0
	divisors = []
	n = 1

	if Prime.prime?(int) == true
		return "#{int} is prime"
	end

	while n <= int ** 0.5
	    if int.modulo(n) == 0
	      divisors << n
	      divisors << int / n unless int / n == n
	    end
	    n += 1
	  end
	  return divisors.sort.delete_if{|x| x == 1 || x == int}
end
	# 2.upto int-1 do |i|
 #      puts i
 #      return false if int % i == 0
 #    end
divisors(13)
divisors(12)

#OTHER

# def divisors(n)
#   vals = (2..n/2).select{|x| n%x==0}
#   vals.empty? ? "#{n} is prime" : vals
# end




