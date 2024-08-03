# && - AND operator
# || - OR operator
# ! - NOT operator
# != - NOT operator, == - EQUAL operator
# >, <, >=, <=
# <=> - Combined Comparison Operator

true.class # => TrueClass - why?

# method? - method that returns true or false

# Examples of popular Ruby methods that return boolean values:
# empty? - checks if a string, array, or hash is empty
# include? - checks if an array or string includes a specific element or substring
# nil? - checks if an object is nil
# instance_of? - checks if an object is an instance of a specific class
# respond_to? - checks if an object responds to a specific method
# is_a? - checks if an object is an instance of a specific class or its subclasses
# kind_of? - similar to is_a?, checks if an object is an instance of a specific class or its subclasses
# frozen? - checks if an object is frozen

# checks if two objects are equal in value and type
"value".eql?("value") # true
"value".eql?("Value") # false
"value".eql?(:value) # false

# checks if two objects are the same object
"some".equal?("some") # false
:some.equal?(:some) # true
