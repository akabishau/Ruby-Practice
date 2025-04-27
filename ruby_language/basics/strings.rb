first_name = "John" # Creating a string
last_name = "Doe"

# Concatenating strings
name = first_name + " " + last_name # "John Doe"
hello = "Hello"
hello << ' world!' # "Hello world!" # << appends, string was modified

# Interpolating variables in a string
age = 30
"I am #{age} years old." # "I am 30 years old."

# multiplication of strings
"Yada " * 3 # "Yada Yada Yada "
"1" * 5 # "11111"

# Checking if a string contains a substring
"John Doe".include?("Doe") # true

"John Doe".start_with?("John") # true
"John Doe".end_with?("Doe") # true
"John Doe".split(" ") # ["John", "Doe"] - splits the string into an array of substrings
"John Doe".split("") # ["J", "o", "h", "n", " ", "D", "o", "e"] - splits the string into an array of characters
"John Doe".capitalize # "John doe" - capitalizes the first letter of the string
"john Doe".capitalize # "John doe" - capitalizes the first letter of the string
"John Doe".reverse # "eoD nhoJ" - reverses the string
"John Doe".upcase # "JOHN DOE" - converts the string to uppercase
"John Doe".downcase # "john doe" - converts the string to lowercase
"John Doe".swapcase # "jOHN dOE" - swaps the case of each letter
"John Doe".gsub("John", "Jane") # "Jane Doe" - replaces "John" with "Jane"
"John Doe".length # 8 - returns the length of the string
"John Doe".count("o") # 2 - counts the number of occurrences of "o"
"John Doe".index("o") # 1 - returns the index of the first occurrence of "o"
"John Doe".reverse.capitalize # "Eod nhoj" - can chain methods
# !!!! every ruby method returns an object and next method can be called on it

# Accessing characters in a string
name[0] # "J"
name[-1] # "e" (-1 last character)

# some addtional cases
1.to_s # => "1"
"1".to_i # => 1
"1 apple".to_i # => 1 - works if the string starts with a number
"I have 1 apple".to_i # => 0 ...

# Escaping characters in a string
# technically ' or " are delimiters defining the start and end of the string'

"This is a \"quoted\" string." # This is a "quoted" string. - use \ to escape
"Let's escape a single quote." # Let's escape a single quote.
'Let\'s escape a single quote.' # Let's escape a single quote. - use \ to escape

# special control characters works ONLY WORKS IN DOUBLE QUOTES
# \t - tab
# \n - newline
# \r - carriage return
# \s - space

"1 + 1 = #{1 + 1}" # "1 + 1 = 2" - interpolation works with expressions
