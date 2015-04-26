#working solution

def nato(word)
  letters =  {
    "A"=> "Alpha",  "B"=> "Bravo",   "C"=> "Charlie",
    "D"=> "Delta",  "E"=> "Echo",    "F"=> "Foxtrot",
    "G"=> "Golf",   "H"=> "Hotel",   "I"=> "India",
    "J"=> "Juliett","K"=> "Kilo",    "L"=> "Lima",
    "M"=> "Mike",   "N"=> "November","O"=> "Oscar",
    "P"=> "Papa",   "Q"=> "Quebec",  "R"=> "Romeo",
    "S"=> "Sierra", "T"=> "Tango",   "U"=> "Uniform",
    "V"=> "Victor", "W"=> "Whiskey", "X"=> "X-ray",
    "Y"=> "Yankee", "Z"=> "Zulu"
  }
  #your code here

  chars = word.upcase.split('')
  string = ''

  chars.each do |x|
  	string += "#{letters[x]} "
  end
  return string.strip
end


nato("Banana") # == "Bravo Alpha November Alpha November Alpha"

#steps
	#take in a string
	#break up string into individual characters - array
	#map characters to key value pairing in the hash
	#return the values together in a string

