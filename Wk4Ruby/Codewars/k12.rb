def count_by(x, n)
	# numbers = []
	# n.times do |i|
	# 	numbers << (i+1) * x
	# end
	# p numbers

	array = Array.new(n) {|i| (i+1) * x}
	return array
end

#how get to count by index number?

count_by(1,10)
count_by(2,5)