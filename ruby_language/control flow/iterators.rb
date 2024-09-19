# iterator is method that repeatedly invokes a block of code

# INTEGER METHODS

5.times { puts "Hello" }
5.times { |i| puts "Hello #{i}" }
5.times do |i|
  puts "Hello #{i}"
end

1.upto(5) { |i| puts i } # 1 2 3 4 5
5.downto(1) { |i| puts i } # 5 4 3 2 1
(1..5).each { |i| puts i } # 1 2 3 4 5
1.step(10, 2) { |i| puts i } # 1 3 5 7 9

# STRING METHODS

"Hello".each_char { |c| puts c } # H e l l o
"Hello\nWorld".each_line { |l| puts l } # Hello World
"Hello".each_byte { |b| puts b } # 72 101 108 108 111
"Hello".each_codepoint { |c| puts c } # 72 101 108 108 111

# ARRAY METHODS

fruits = ["apple", "banana", "orange"]

# for fruit in fruits do ... end # not common?
fruits.each { |fruit| fruit } # apple banana orange
fruits.each_with_index { |fruit, i| "#{i}: #{fruit}" } # 0: apple 1: banana 2: orange
fruits.each_index { |i| "#{i}: #{fruits[i]}" } # 0: apple, 1: banana, 2: orange

# more in enumerable module
fruits.select { |fruit| fruit.length > 5 } # ["banana", "orange"]
fruits.reject { |fruit| fruit.length > 5 } # ["apple"]
fruits.reduce { |sum, fruit| sum + fruit.length } # 18 (0 + 5 + 6 + 7)

fruits.map { |fruit| fruit.upcase } # ["APPLE", "BANANA", "ORANGE"]
fruits.map(&:upcase) # ["APPLE", "BANANA", "ORANGE"] - alternative syntax
# & operator converts the symbol to a proc (block of code that can be executed)
# :upcase is a symbol


# HASH METHODS
# each
# each_key
# each_value
# each_pair