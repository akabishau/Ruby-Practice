# ordered, zero-indexed collection of any object
# class Array

# FEATURES
# can combine different types of objects
# can have duplicates
# can be nested arrays
# can have nil objects

array = [1, "two", :three, nil, 5.0, 5, 5, 1]
array[0] # 1
array[3] = "four" # [1, "two", :three, "four", 5.0, 5, 5, 1]
array << "last" # [1, "two", :three, "four", 5.0, 5, 5, 1, "last"]
array << [6, 7] # [1, "two", :three, "four", 5.0, 5, 5, 1, "last", [6, 7]]
array[-1] # [6, 7]
array[2, 3] # - 3 elements starting from index 2 => [:three, "four", 5.0]
array[-2, 2] # - 2 elements starting from index -2 => ["last", [6, 7]]
array[0..1] # - elements from index 0 to index 1 => [1, "two"]

# METHODS
my_array = [2, 4, [9, 10], nil, 4, "c"]
my_array.length # 6
my_array.size # 6
my_array.count # 6
my_array.count(4) # 2
my_array.empty? # false

# does not modify the original array
my_array.reverse # ["c", 4, nil, [9, 10], 4, 2]
# assigns the reversed array to the variable
reversed = my_array.reverse # ["c", 4, nil, [9, 10], 4, 2]
# modifies the original array - WORKS WITH OTHER METHODS
my_array.reverse! # ["c", 4, nil, [9, 10], 4, 2]
# ! - bang

my_array.shuffle # random order (temp) + ! (perm)
my_array.compact! # perm remove nils
my_array.flatten! # perm flattens any nested arrays into one array

my_array.include?(4) # true
my_array.delete_at(0) # return and deletes element and shifts the rest of the elements
my_array.delete(4) # deletes all instances of 4

# array methods - stack behavior
# push - add to the end or <<
# pop - remove from the end and return it
# shift - remove from the beginning and return it
# unshift - add to the beginning

# array math operations
combined_array = [1, 2, 3] + [4, 5] # [1, 2, 3, 4, 5]
remove_twos_array = [1, 2, 3, 2] - [2] # [1, 3] - removes ALL instances of 2

# array iteration methods
arr = [1, 2, 3]
arr.map { |num| num * 2 } # [2, 4, 6] - block returns new array
arr.select { |num| num > 1 } # [2, 3] - block returns true
arr.reject { |num| num > 1 } # [1] - block returns false
arr.uniq! # [1, 2, 3] - perm (!) removes duplicates
arr.join(", ") # "1, 2, 3" - returns a string
arr.join # "123" - returns a string - () can be omitted
arr.sort # temp sorts the array
arr.slice(1, 2) # [2, 3] - returns a new array - (index, length)
