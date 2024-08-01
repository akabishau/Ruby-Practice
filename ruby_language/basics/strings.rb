first_name = "John" # Creating a string
last_name = "Doe"

# Concatenating strings
name = first_name + " " + last_name # "John Doe"
greeting = "Hello, #{name}" << "!" # "Hello, John Doe!"

# Interpolating variables in a string
age = 30
"I am #{age} years old." # "I am 30 years old."

# multiplication of strings
"Yada " * 3 # "Yada Yada Yada "

# Checking if a string contains a substring
contains_doe = name.include?("Doe") # true

name.split # array ["John", "Doe"] - (" ") is default
name.reverse # "eoD nhoJ"
name.upcase # "JOHN DOE"
name.downcase # "john doe"
name.capitalize # "John doe"
name.length # 8

# Accessing characters in a string
name[0] # "J"
name[-1] # "e" (-1 last character)

# Escaping characters in a string
"This is a \"quoted\" string." # This is a "quoted" string. - use \ to escape
"Let's escape a single quote." # Let's escape a single quote.

# works only with double quotes
# \t - tab
# \n - newline
# \r - carriage return
# \s - space

"1 + 1 = #{1 + 1}" # "1 + 1 = 2" - interpolation works with expressions


1.to_s # => "1"
"1".to_i # => 1
