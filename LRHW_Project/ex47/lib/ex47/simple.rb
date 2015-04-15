class Simple
	def hello
		return "hello"
	end 

	def hash_party(locations)
		parties = {}
		locations.split.each_with_index do |k, v|
			parties[k] = v+1
		end
		@parties_numbered = parties.invert
		return @parties_numbered	
	end

	def go_party(party_num)
		return @parties_numbered[party_num]
		#return @parties_numbered
	end
end

simple = Simple.new()
simple.hash_party("Manchester London Stockport Newcastle Leeds")
simple.go_party(1)

#want to test if a method returns hello
#add hash_party method which takes a string of locations, turns to array and adds 1,2,3,4,5 as keys
#go party method calls party you go to based on number