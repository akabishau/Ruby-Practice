# can't be edited
# lowercase, underscore, no spaces
# can't use integers as symbols

 # Old way
 # => hash rocket
old_person = { :name => "Jonh", :age => 30 }


# Creating a hash with symbols as keys
person = { name: "John", age: 30, city: "New York" } # current "json" like way
person[:name] # Output: "John"
person.keys.first.class # Symbol

# RAILS not RUBY feature: interchangeble with strings
# person["name"] # Output: "John" - Rails allows to use strings as keys


"test".object_id # 60
"test".object_id # 80 - different object_id even for the same string
:name.object_id # keeps the same object_id (reference) - immutable
:name.class # Symbol


name = "ruby"
symbol_name = :ruby
name == symbol_name # false
name.to_sym == symbol_name # true


# RAILS
options = { format: :json, status: :ok }

def user_params
  params.require(:user).permit(:name, :email)
end

# symbols or routes => table names, methods
# models => has_many, belogns_to...

# inside the model -
def update_attribute(attribute, value)
  self.send("#{attribute}=", value)
  self.save
end
user.send(:name, "New Name")