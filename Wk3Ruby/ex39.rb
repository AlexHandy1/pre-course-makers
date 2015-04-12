regions = {
	:NW => :NorthWest,
	:NE => :NorthEast,
	:SE => :SouthEast,
	:SW => :SouthWest
}

counties = {
	:NorthWest => :Lancashire,
	:NorthEast => :TyneAndWear,
	:SouthEast => :Oxfordshire,
	:SouthWest => :Dorset
}

cities = {
	:Lancashire => :Manchester,
	:TyneAndWear => :Newcastle,
	:Oxfordshire => :Oxford,
	:Dorset => :Bournemouth
}

city_acronyms = {
	:Manchester => :MCR,
	:Newcastle => :NWC, 
	:Oxford => :OXD,
	:Bournemouth => :BNM
}

puts regions[:NW]
puts regions[:SW]

puts counties[regions[:NW]] #remember looks in the inside hash first e.g. NW => NorthWest and then feeds that key to find corresponding value in next hash Northwest => Lancashire
puts city_acronyms[cities[:Lancashire]]

puts "-" * 10

regions.each do |abbrev, region|
	county = counties[region]
	city = cities[county]
	city_acronym = city_acronyms[city]
	puts "The abbreviation #{abbrev} is for the #{region} which has #{county} as a county within it and #{city} as a city which can be shortened to #{city_acronym}"
end

puts "-" * 10

puts "-" * 10
puts "Practice methods"

puts regions.keys #prints all the keys
puts regions.key(:NorthWest) #finds and prints the corresponding value
puts regions.has_key?(:NW) #returns true or false based on whether the key is found
switch_regions = regions.invert #switches the key, value pairs but would need to store in a variable to keep
puts switch_regions

counties_array = counties.to_a
puts counties_array
counties_new = counties_array.to_h
puts counties_new

one_city = cities.select {|k,v| k == :Lancashire }
puts one_city

cities.merge!(city_acronyms) #merges two hashes together, if any duplicates for keys then they are overwritten from the new hash (e.g. the one in brackets)
puts cities
city_acronyms.store(:Liverpool, :LPL) #another way of adding to a hash
puts city_acronyms

### SORTING EXAMPLE ###

#hash within a hash
teams = {
	:Man_U => {:team => "Man United", :wins => 20},
	:Man_C => {:team => "Man City", :wins => 28},
	:West_Brom => {:team => "West Brom", :wins => 15}
}

puts teams.sort_by {|k, v| v[:wins]} #sorts by smallest number first
puts teams.sort_by {|k, v| v[:team]} #sorts in alphabetical order









