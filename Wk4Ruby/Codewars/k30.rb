def no_odds(values)
	
	values.inject([]) do |a,e| 
		a << e if e % 2 == 0
		a
	end
end

no_odds([1,2,3,4,5])