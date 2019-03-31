#assign the user input command line argument to the filename variable
filename = ARGV.first
# create the prompt sign
prompt = ">"
print "Enter the filename: "
filename = STDIN.gets.chomp

 # open the file and store it in the variable text
txt = open(filename)


puts "Here's your file: #{filename}"  #tells the user that there's content following
puts txt.read
