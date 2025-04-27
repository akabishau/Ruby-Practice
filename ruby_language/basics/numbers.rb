# INTERGER
# Inherits from Numeric class
# Math operations
result = 5 + 3 # Output: 8 # Addition
result = 10 - 4 # Output: 6 # Subtraction
result = 6 * 2 # Output: 12 # Multiplication
result = 15 / 3 # Output: 5 # Division
result = 17 % 5 # Output: 2 # Modulo (Remainder)
result = 2**3 # Output: 8 (2 * 2 * 2) # Exponentiation (2 raised to the power of 3)

# Integer Methods
100.class # Output: Integer
result = -10.abs # Output: 10, returns the absolute value of an integer
result = 6.even? # Output: true, returns true if the integer is even, false otherwise
result = 7.odd? # Output: true, returns true if the integer is odd, false otherwise
result = 5.next # Output: 6

# times - executes a block of code a specified number of times
3.times { puts "Hello" } # Output: Hello Hello Hello

# FLOATS
# (floating-point numbers) or decimals numbers in real world
# Inherits from Numeric class
# Int & Int => Int, 10 / 3 => 3
# Int & Float => Float, 10 / 3.0 => 3.3333333333333335
# Float & Float => Float, 10.0 / 3.0 => 3.3333333333333335

# Common methods available on Float class
float_num = 3.14
float_num.round # Output: 3 (Round to the nearest integer)
float_num.floor # Output: 3 (rounds down)
float_num.ceil # Output: 4 (rounds up)
float_num.abs # Output: 3.14 (absolute value)

# convert float to integer and vice versa
3.0.to_i # => 3
3.14.to_i # => 3 (truncates the decimal part)
