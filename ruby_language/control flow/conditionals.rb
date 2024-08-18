x = 10
# CONDITIONALS: IF or IF-ELSE-END
puts "x > 5" if x > 5

if x > 5
  puts "x > 5"
else
  puts "x <= 5"
end

# ELSIF: IF-ELSIF-ELSE-END statement


# CONDITIONALS: UNLSESS (use when it makes the code more readable)
puts "a != 10" unless x == 10 # negation of if statement !true

cart = ["shoes", "watch", "computer"]
puts "The first item is #{cart[0]}" unless cart.empty?

# if product.visible? ... end # positive
# unless product.hidden? ... end # negative
# if product.in_stock? ... end # positive
# unless product.sold_out? ... end # negative but the same as positive above

# can use UNLESS-ELSE-END statement but not common

# CONDITIONALS: CASE statement: CASE-WHEN-WHEN-END

# option 1: case without argument (boolean expression)
case
when x == 1
  puts "x is 1"
when (2..5).include?(x)
  puts "x is within 2-5 range"
else
  puts "x > 5"
end

# option 2: case with argument (like switch)
case x
when 1
  puts "x is 1"
when 2..5
  puts "in range 2-5"
else
  puts "x > 5"
end

# CONDITIONALS: SHORTCUTS

# TERNARY operator
# condition ? expression_if_true : expression_if_false
count = 2
puts count == 1 ? "#{count} person" : "#{count} people"

# OR operator (||) - evaluates true if either of the operands is true.
# It evaluates the second operand only if the first operand is false.
DEFAULT_LIMIT = 80
limit = 100
max = limit || DEFAULT_LIMIT # will assign default of limit is nil

# OR-EQUALS operator (||=)
# "if max is has a value, keep it; otherwise, assign DEFAULT_LIMIT to it"
max ||= DEFAULT_LIMIT
max = DEFAULT_LIMIT unless max


puts "Hello" if greeting_enabled
score += 10 unless score >= MAX_SCORE