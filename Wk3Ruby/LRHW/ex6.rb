#sets variable for types of people
types_of_people = 10
#stores a print out of that variable in another variable called x (string inside a string)
# creates another three variables
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}." #stores 2 strings inside a string variable

#prints out
puts x
puts y

puts "I said: #{x}."
puts "I also said: '#{y}'."

#sets hilarious to false and then puts as evaluation in another string variable (string inside a string #5 not 4)
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."

#adds together to make one string
puts w + e

#In cases where have values such as ' in don't the single quotes don't work as you need to have them escape