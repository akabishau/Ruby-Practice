# UNORDERED
# OBJECT-INDEXED, no position to access items
# COLLECTION OF KEY-VALUE PAIRS
# VALUES CAN BE ANY OBJECT
# KEYS MUST BE UNIQUE

# old syntax - hash rocket, like key pointing to value
car = {
  "brand" => "Toyota",
  "model" => "Corolla",
  "year" => 2020,
}
car["brand"] # access value: Toyota


person = {
  name: "John",
  age: 30,
  city: "New York"
}

person[:name] # access value: John

# Add a new key-value pair to the hash
person[:occupation] = "Software Engineer"
# { name: "John", age: 30, city: "New York", occupation: "Software Engineer" }

# Update the value of a key in the hash
person[:age] = 31

# Delete a key-value pair from the hash
person.delete(:city)

# Iterate over the hash
person.each do |key, value|
  puts "#{key}: #{value}"
end

person.keys # [:name, :age, :occupation]
person.key?(:name) # true
person.values # ["John", 31, "Software Engineer"]
person.value?("John") # true
person.values_at(:name, :age) # ["John", 31]

person.length # 3

person.store(:hobby, "Fishing") # adds a new key-value pair

# adds a new key-value pair and updates the value of an existing key
person.merge!({ hobby: "Fishing", city: "New York" })