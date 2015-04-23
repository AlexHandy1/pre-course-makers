def solution(keys, value)
	#set-up an empty hash with keys variable
	#add 0 as a default variable
	hash = Hash[keys.map{|k| [k, value]}]
	return hash
end

solution([:draft, :completed], 0)