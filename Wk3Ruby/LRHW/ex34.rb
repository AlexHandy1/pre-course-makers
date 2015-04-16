tester = ["here", "is", "a", "practice", "array"]
tester_two = [["can", "I", "recall"],["what", "happens", "when"],["it", "is", "multi-dimensional"]]

puts tester.length
puts tester_two.length

puts tester[1]
puts tester_two[2][1] #first calls on which array and the second calls on which element within that array
		
puts tester[-2] # counts back from the last index e.g. 2 back from the 4th element
puts tester_two[-2]

tester.push("Alex")
puts tester[5]
tester_two << "Alex" # are appended as a new array element e.g. an entire new array bucket
puts tester_two[3]

tester.pop() # removes last element from array
puts tester[4]
tester_two.pop()
puts tester_two[2]