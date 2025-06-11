puts "Hello" # new line at the end

print "Hello withe explicit new line char\n"
print "Another Hello" # no newline at the end
"\n"

print "What's you name? "
response = gets.chomp # gets input from user, chomp removes the newline character
# chop - removes the last character, useful for removing trailing newline

puts "Hello #{response}!"