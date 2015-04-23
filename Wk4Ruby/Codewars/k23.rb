class String
	def hashtag
		array = []
		scan(/(?<!\w)#\w+/) {|w| array << w }
		return array
	end
end

"this #word is #hashtagged".hashtag