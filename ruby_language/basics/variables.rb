# Local variable
my_variable = "Local variable"
puts my_variable

# Instance @ vs Class variable @@
class MyClass
  @@class_var = "Class variable"

  def self.class_var
    puts @@class_var
  end

  def initialize
    @my_var = "Instance variable"
  end

  def greeting
    puts @my_var
  end
end

obj = MyClass.new
obj.greeting # => "Instance variable"

MyClass.class_var # => "Class variable"

# Global variable - $ (avoid using)
$my_global_variable = "Hello, World!"

######## IMPORTANT ###########

# vars not objects but references to objects
# "pass-by-reference" for objects example
var1 = "Hello, World!"
var2 = var1
var1.upcase!

# Both var1 and var2 reflect the change
puts var1  # Outputs: "HELLO, WORLD!"
puts var2  # Outputs: "HELLO, WORLD!"

# Assign a new object to var1
var1 = "Goodbye, World!"

puts var1  # Outputs: "Goodbye, World!"
puts var2  # Outputs: "HELLO, WORLD!

puts MyClass.inspect

###################
# CONSTANTS #
MAX_SPEED = 100 # constant

# not meant to be changed
# but can be changed
# warning will be thrown
# only first letter makes it a constant
