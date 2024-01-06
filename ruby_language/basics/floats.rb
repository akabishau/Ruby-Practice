# Math operations with floats
num1 = 3.14
num2 = 2.5

sum = num1 + num2
difference = num1 - num2
product = num1 * num2
quotient = num1 / num2

puts "Sum: #{sum}"
puts "Difference: #{difference}"
puts "Product: #{product}"
puts "Quotient: #{quotient}"

# Common methods available on Float class
float_num = 3.14

# Round to the nearest integer
rounded_num = float_num.round
puts "Rounded number: #{rounded_num}"

# Get the floor value
floor_value = float_num.floor
puts "Floor value: #{floor_value}"

# Get the ceiling value
ceiling_value = float_num.ceil
puts "Ceiling value: #{ceiling_value}"

# Get the absolute value
absolute_value = float_num.abs
puts "Absolute value: #{absolute_value}"

# convert float to integer and vice versa
3.0.to_i # => 3
3.14.to_i # => 3 (truncates the decimal part)
