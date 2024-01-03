inclusive = 1..4 # inclusive range - 1, 2, 3, 4
exclusive = 1...4 # exclusive range - 1, 2, 3

puts inclusive.class # Range
puts exclusive.to_a.inspect # [1, 2, 3]

inclusive.begin # 1
inclusive.end # 4
inclusive.first # 1
inclusive.last # 4

# trick - not sure what the difference is
array = [*inclusive] # [1, 2, 3, 4]

letters = "a".."c" # "a", "b", "c"
letters.include?("b") # true
letters.to_a # ["a", "b", "c"]
