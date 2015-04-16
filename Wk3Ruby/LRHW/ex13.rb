player, year, stat = ARGV

puts "The player you want to analyse is #{player}"
puts "The year you want to look at is #{year}"
puts "The stat you want to focus on is #{stat}"

puts "Is there anything else you want to focus on?"
response = $stdin.gets.chomp # have to use stdin to define input point, gets alone fails because tries to read ARGV(0)
puts "You said #{response}"