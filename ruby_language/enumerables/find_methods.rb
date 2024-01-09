# if nothing found returns nil

(1..5).find { |i| (i % 2).zero } # => 2
(1..5).find(&:even?) # => 2 - (1..5).find { |i| i.even? }

fruits = ["apple", "banana", "pear"]
fruits.detect { |fruit| fruit.length > 4 } # => "apple" (first found element)
fruits.find_all { |fruit| fruit.length > 4 } # => ["apple", "banana"]
fruits.select { |fruit| fruit.length > 4 } # => ["apple", "banana"]

cart = { "apple" => 3, "banana" => 1, "pear" => 5 }
cart.find { |_fruit, quantity| quantity > 4 } # => ["pear", 5] as an array
cart.all? { |_fruit, quantity| quantity > 4 } # => false
cart.one? { |_fruit, quantity| quantity > 4 } # => true
cart.any? { |_fruit, quantity| quantity > 4 } # => true

numbers = [1, 2, 3, 4, 5]
numbers.delete_if(&:odd?) # => [2, 4]

# select = find_all
# detect = find
# reject = delete_if
# all? = none?
