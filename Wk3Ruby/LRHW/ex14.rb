player = ARGV[0]
year = ARGV[1]
stat = ARGV[2]

puts "Hello"
puts "So you have stated that #{player} is your favourite player and you want to know their #{stat} from #{year}."
puts "I am going to ask you a couple of questions to test your knowledge"
puts "What confirmation word do you want? Choose 'COOL?' 'OK?'' or 'THAT's GAME'?"
confirmation = $stdin.gets.chomp

puts "Question 1: When did this player start their pro career? "
qu_1 = $stdin.gets.chomp
puts confirmation
$stdin.gets.chomp

puts "Question 2: How many matches have they won in their pro career? "
qu_2 = $stdin.gets.chomp
puts confirmation
$stdin.gets.chomp

puts "So you think that #{player} started their career in #{qu_1} and has won #{qu_2} matches?"