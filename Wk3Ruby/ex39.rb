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

