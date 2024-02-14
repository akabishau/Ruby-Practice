# Have the function FindIntersection(strArr) read the array of strings stored in strArr which will contain 2 elements:
#  - the first element will represent a list of comma-separated numbers sorted in ascending order,
#  - the second element will represent a second list of comma-separated numbers (also sorted).
#
#  Your goal is to return a comma-separated string containing the numbers that occur in elements of strArr in sorted order.
# If there is no intersection, return the string false.

def find_intersection(_array)
  first = strArr[0].split(", ").map(&:to_i).uniq
  second = strArr[1].split(", ").map(&:to_i).uniq
  common = first & second
  common.empty? ? false : common.to_a.sort.join(", ")
end

# keep this function call here
puts FindIntersection(["1, 3, 3, 4, 7, 13", "1, 2, 4, 13, 15"])
