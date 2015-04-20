def duplicate_count(text)
    #split text into an array .split (check if .scan or if can do straight on string)
    #check examples - .include is option
    #make sure case insensitive
    characters = text.downcase.split('')
    character_count = Hash.new(0)

    characters.each do |x|
    	character_count[x] += 1
    end

    values = character_count.values.to_a
    value_count = []
    values.each do |x|
    	value_count << x if x >= 2
    end
    p value_count.length
    return value_count.length
end

duplicate_count("abcdeaeedd")