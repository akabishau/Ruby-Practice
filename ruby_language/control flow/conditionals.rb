# Example 1: If statement
x = 10
puts "x is greater than 5" if x > 5

# Example 2: If-else statement
y = 3
if y > 5
  puts "y is greater than 5"
else
  puts "y is less than or equal to 5"
end

# Example 3: If-elsif-else statement
z = 7
if z > 10
  puts "z is greater than 10"
elsif z > 5
  puts "z is greater than 5 but less than or equal to 10"
else
  puts "z is less than or equal to 5"
end

# Example 4: Unless statement
# negation of if statement !true
a = 8
puts "a is not equal to 10" unless a == 10

cart = ["shoes", "watch", "computer"]
puts "The first item is #{cart[0]}" unless cart.empty?

# Example 5: Case statement
# similar to switch statement in other languages
# case when when else end
x = 5
case x
when 1
  puts "x is 1"
when 2
  puts "x is 2"
when 3..5
  puts "x is between 3 and 5"
else
  puts "x is greater than 5"
end

# Example 6: Ternary operator
# condition ? expression_if_true : expression_if_false
count 2
puts count == 1 ? "#{count} person" : "#{count} people"

# Example 7: Or operator
# The or operator (||) returns true if either of the operands is true.
# It evaluates the second operand only if the first operand is false.
DEFAULT_LIMIT = 100
limit = 50

max = limit || DEFAULT_LIMIT
limit ||= DEFAULT_LIMIT
