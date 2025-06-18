numbers = [1, 2, 3, 4]
numbers.group_by { |num| num.even? } # => {false=>[1, 3], true=>[2, 4]} - groups by even/odd


employees = [
  { name: "Alice", department: "Engineering", salary: 90000 },
  { name: "Bob", department: "Marketing", salary: 60000 },
  { name: "Charlie", department: "Engineering", salary: 95000 },
  { name: "Diana", department: "Sales", salary: 70000 },
  { name: "Eve", department: "Marketing", salary: 65000 }
]

by_department = employees.group_by { |emp| emp[:department] }
# => {
#   "Engineering" => [
#     { name: "Alice", department: "Engineering", salary: 90000 },
#     { name: "Charlie", department: "Engineering", salary: 95000 }
#   ],
#   "Marketing" => [
#     { name: "Bob", department: "Marketing", salary: 60000 },
#     { name: "Eve", department: "Marketing", salary: 65000 }
#   ],
#   "Sales" => [
#     { name: "Diana", department: "Sales", salary: 70000 }
#   ]
# }

puts employees.group_by(&:department)


# These are equivalent:
numbers.select { |num| num.even? }  # => [2, 4]
numbers.select(&:even?)             # => [2, 4]