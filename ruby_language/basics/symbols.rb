# Creating a hash with symbols as keys
person = { name: "John", age: 30, city: "New York" } # current "json" like way
# person2 = { :name => "Jonh", :age => 30, :city => "New York"} # Old way
# => hash rocket
# can't use integers as symbols

# Accessing values using symbols as keys
puts person[:name] # Output: "John"
puts person[:age]  # Output: 30
puts person[:city] # Output: "New York"

puts :name.object_id # keeps the same object_id
puts :name.class # Symbol
