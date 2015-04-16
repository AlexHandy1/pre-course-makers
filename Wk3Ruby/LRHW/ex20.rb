input_file = ARGV.first

# reads f parameter that passed in
def print_all(f)
  puts f.read
end

# goes to start of f parameter that passed in
def rewind(f)
  f.seek(0)
end

# prints out the line number and gets the f parameter until new line marker
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# opens input file provided in ARGV
current_file = open(input_file)

puts "First let's print the whole file:\n"

# prints out file for reading
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# goes back to start of file so can print lines of file
rewind(current_file)

puts "Let's print two lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)