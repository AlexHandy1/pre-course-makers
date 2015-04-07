puts "Who is your favourite tennis player?"
player = gets.chomp

puts "What year do you want to see their results from?"
year = gets.chomp.to_i

puts "What stat do you want to check from that year?"
stat = gets.chomp

puts "Ok, so #{player} is your favourite player and you want to know their #{stat} from #{year}. Is that correct?"
confirm = gets.chomp
