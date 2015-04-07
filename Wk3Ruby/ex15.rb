filename = ARGV[0]

txt = open(filename)
puts "Here is your file #{filename}"
puts txt.read

puts "What file do you want to look at now?"
file_two = $stdin.gets.chomp
txt_two = open(file_two)

puts "Here is your file #{file_two}"
puts txt_two.read