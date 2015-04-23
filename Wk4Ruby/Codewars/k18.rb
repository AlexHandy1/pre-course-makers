#steps
	#create function Jaden case that takes a string
	#convert to an array that splits on each word
	#iterate over words and capitalize each element
	#store in a new array and return that array

class String
	def toJadenCase(string)
		array = string.split(' ')
		jaden_array = []
		array.each do |x|
			jaden_array << x.capitalize
		end
		jaden_string = jaden_array.join(' ')
		return jaden_string
	end
end

test = String.new
test.toJadenCase("How can mirrors be real if our eyes aren't real")

