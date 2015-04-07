filename = ARGV[0]
puts "This is a short script to erase and rewrite a particular file that has been passed to the command line"

puts "If you don't want this to happen to #{filename} hit CRTL C now, otherwise hit RETURN"
$stdin.gets.chomp

puts "Opening and truncating the file"
target = open(filename, 'w')

puts "Now we are going to put in some new text"

line1 = $stdin.gets.chomp
line2 = $stdin.gets.chomp

target.write(line1 + line2)

puts "You have added '#{line1}' and '#{line2}' to #{filename}"

puts "Now the file will be closed"
target.close()

puts "What file do you now want to read?"
read_file = open($stdin.gets.chomp)

puts read_file.read