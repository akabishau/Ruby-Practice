# Int & Int => Int
# Int & Float => Float
# Float & Float => Float

# Math operations with floats
num1 = 3.14
num2 = 2.5
num1 + num2 # Output: 5.64
num1 - num2 # Output: 0.64
num1 * num2 # Output: 7.85
num1 / num2 # Output: 1.256

# Common methods available on Float class
float_num = 3.14
float_num.round # Output: 3 (Round to the nearest integer)
float_num.floor # Output: 3 (rounds down)
float_num.ceil # Output: 4 (rounds up)
float_num.abs # Output: 3.14 (absolute value)

# convert float to integer and vice versa
3.0.to_i # => 3
3.14.to_i # => 3 (truncates the decimal part)
