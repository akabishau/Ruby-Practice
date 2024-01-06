# Creating a string
name = "John Doe"

# Concatenating strings
greeting = "Hello, #{name}" << "!"

# Interpolating variables in a string
age = 30
message = "I am #{age} years old."

# Checking if a string contains a substring
contains_doe = name.include?("Doe")

# Splitting a string into an array
words = name.split # (" ") is default

# Reversing a string
reversed_name = name.reverse

# Converting a string to uppercase
uppercase_name = name.upcase

# Converting a string to lowercase
lowercase_name = name.downcase

# Finding the length of a string
name_length = name.length

# Accessing characters in a string
first_initial = name[0]
last_initial = name[-1]

# Escaping characters in a string
escaped_string = "This is a \"quoted\" string."

# works only with double quotes
# \t - tab
# \n - newline
# \r - carriage return
# \s - space

# Printing the results
puts greeting
puts message
puts contains_doe
puts words
puts reversed_name
puts uppercase_name
puts lowercase_name
puts name_length
puts first_initial
puts last_initial
puts escaped_string
