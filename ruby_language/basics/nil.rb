# nil - a special value in Ruby that represents nothingness
nil.class # => nil is an object of NilClass
# nil != false
name = nil

# Checking if a variable is nil
if name.nil?
  puts "The name is not set."
else
  puts "The name is #{name}."
end

puts "The name is not set" if name.nil?
puts "The name is not set" unless name
!name # can also be used for nil check
