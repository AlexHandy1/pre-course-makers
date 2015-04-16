from_file, to_file = ARGV

IO.write(ARGV[1], IO.read(ARGV[0]))

puts "What file do you now want to read?"
read_file = open($stdin.gets.chomp)

puts read_file.read
read_file.close()