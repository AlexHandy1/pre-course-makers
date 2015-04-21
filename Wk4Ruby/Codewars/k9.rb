#AGAIN, WORKS BUT NOT PASSED

def capital(capitals_hash_array)

sentence = []
	capitals_hash_array.each do |subhash|
		subhash.each do |k, v|
			sentence << k.to_s
			sentence << v.to_s
		end
	end
	puts "The #{sentence[2]} of #{sentence[1]} is #{sentence[3]}"
	return "The #{sentence[2]} of #{sentence[1]} is #{sentence[3]}"
end

state_capitals = [{state: 'Maine', capital: 'Augusta'}]
country_capitals = [{'country' => 'Spain', 'capital' => 'Madrid'}]
capital(state_capitals)
capital(country_capitals)

#build method that takes array of hashes
#iterate over both the first key value combination and the second key value combination separately - how?
#split hash into k, v variables and place into a sentence "The #{key1} of #{value1} is #{value2} "
#return array of those sentences for each combination 
#given it is an array could do it on index position