
def method_name(parameters)
  "Hello, #{parameters}!"
end

# declaration - parameters, calling - arguments

# Call the method
# method_name(arguments)

method_name("World") # => "Hello, World!"
method_name "Ruby" # => "Hello, Ruby!" # parentheses are optional but recommended for clarity

# variables scope
value = 10

def output_value
  puts value # Error: undefined local variable or method `value'
  value = 20 # local variable inside the method, will not affect the outer `value`
  puts value # prints 20
end

# multiple arguments
def volume(length, width, height)
  length * width * height
end
volume(2, 3, 4) # => 24
volume(2, 3) # Error: wrong number of arguments (given 2, expected 3)

# Keyword Arguments in Ruby
def greet(name:, greeting: "Hello")
  "#{greeting}, #{name}!"
end

greet(name: "Alice")                    # => "Hello, Alice!"
greet(name: "Bob", greeting: "Hi")      # => "Hi, Bob!"
greet(greeting: "Hey", name: "Charlie") # Order doesn't matter
# greet() # Error: missing keyword: name (required)

# default values for parameters: string, number, bool, [], {}, nil (also an object in Ruby)
def method(param = "default")
  puts param
end
method() # prints "default"
method("custom") # prints "custom"

# required vs optional parameters
def complex_method(required1, required2, optional1 = "opt1", optional2 = "opt2")
  puts "#{required1}, #{required2}, #{optional1}, #{optional2}"
end
complex_method("r1", "r2") # prints "r1, r2, opt1, opt2"
complex_method("r1", "r2", "custom1") # prints "r1, r2, custom1, opt2"
complex_method("r1", "r2", "custom1", "custom2") # prints "r1, r2, custom1, custom2"


# Variable Arguments (*args and **kwargs)

# Use *args to accept any number of positional arguments as an array
def sum(*numbers)
  numbers.sum
end

sum(1, 2, 3)     # => 6
sum(10)          # => 10
sum()            # => 0

# Use **kwargs for keyword arguments as a hash.
def config(**options)
  puts "Debug: #{options[:debug] || false}"
  puts "Mode: #{options[:mode] || 'default'}"
end

config(debug: true, mode: "test")  # Prints: Debug: true, Mode: test
config()                           # Prints: Debug: false, Mode: default


# using hash for named parameters
def named_params_method(options = {})
  name = options[:name] || "Guest"
  age = options[:age] || 0
  puts "Name: #{name}, Age: #{age}"
end
named_params_method(name: "Alice", age: 30) # prints "Name: Alice, Age: 30"
named_params_method({name: "Alice", age: 30}) # same as above, explicit hash
named_params_method(age: 25) # prints "Name: Guest, Age: 25"
named_params_method() # prints "Name: Guest, Age: 0"

# return values
def add(a, b)
  a + b # last evaluated expression is returned
end

def explicit_return(a, b)
  return a + b # explicit return
  puts "This will never be executed"
end

# methods can return multiple values as an array because methods always return a single object
def multiple_returns
  return 1, 2, 3 # actually returns [1, 2, 3]
end
a, b, c = multiple_returns # a=1, b=2, c=3
results = multiple_returns # results = [1, 2, 3]


# Instance methods: Defined in classes, called on instances (e.g., obj.method).
# Class methods: Use def self.method or class << self; def method; end; end.
# Private methods: Use private keyword to restrict access.


# Block Parameters (&block)
# Blocks are chunks of code passed to methods.
# Use &block to capture and call them. Blocks can be called with yield or block.call.
def execute_twice(&block)
  block.call
  block.call
end

execute_twice { puts "Hello!" }  # Prints "Hello!" twice
execute_twice do
  puts "Hello!"
  puts "World!"
end

# using method as a block
def say_hello
  puts "Hello!"
end
# (using & to convert to proc)
execute_twice(&method(:say_hello))  # Prints "Hello!" twice

# Using a Lambda or Proc:
my_block = lambda { puts "Hello from lambda!" }
execute_twice(&my_block)  # Prints "Hello from lambda!" twice

def with_yield
  yield if block_given?
end

with_yield { puts "Yielded!" }  # Prints "Yielded!"
with_yield                      # Does nothing (no block)
