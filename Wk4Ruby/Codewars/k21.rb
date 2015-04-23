def solution(number)
multiples = []
 	(number-1).downto 0 do |x|
 		multiples << x if x % 3 == 0 || x % 5 == 0
 	end
 	sum = 0

 	multiples.each do |x|
 		sum += x
 	end
 	return sum
end

solution(10)