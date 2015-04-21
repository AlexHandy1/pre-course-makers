# Write a function called autocorrect that takes a string and replaces all instances of "you" or "u" (not case sensitive) with "your sister" (always lower case).

# Return the resulting string.

# Here's the slightly tricky part: These are text messages, so there are different forms of "you" and "u".

# For the purposes of this kata, here's what you need to support:

#     "youuuuu" with any number of u characters tacked onto the end

#     "u" at the beginning, middle, or end of a string, but NOT part of a word

#     "you" but NOT as part of another word like youtube or bayou

#steps
	#find right method (gsub) that can be use to replace specific instance with something else
	#research how replace multiple values - try just repeating a working gsub (might overwrite each time)

def autocorrect(string)
	map = {"you" => "your sister", "youuuuu" => "your sister"}
	re = Regexp.new(map.keys.map { |x| Regexp.escape(x) }.join('|'))

	new_string = string.gsub!([[re, map]])
	p new_string
end

autocorrect("youuuuu")
