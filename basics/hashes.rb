# Create a hash
person = {
  name: "John",
  age: 30,
  city: "New York"
}

# Access values in the hash
puts person[:name] # Output: John
puts person[:age] # Output: 30
puts person[:city] # Output: New York

# Add a new key-value pair to the hash
person[:occupation] = "Software Engineer"

# Update the value of a key in the hash
person[:age] = 31

# Delete a key-value pair from the hash
person.delete(:city)

# Iterate over the hash
person.each do |key, value|
  puts "#{key}: #{value}"
end
