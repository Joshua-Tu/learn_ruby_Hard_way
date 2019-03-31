input_file = ARGV.first # ARGV.first aka ARGV[0], this syntax means need the user to input the file name

#define a method that reads the whole file
def print_all(f)   
  puts f.read()
end

#define a method that put the pointer to the first line of the file
def rewind(f)
  f.seek(0)
end

#define a method that print the whole line, f.gets.chomp means read a certain whole line of the file. Read one line each time.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

#open the file
current_file = open(input_file)
puts "First, let's print the whole file:\n"

#print out all the file content
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

#Go back to the first line
rewind(current_file)

puts "Let's print three lines:"

current_line = 1
print_a_line(current_line,current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)