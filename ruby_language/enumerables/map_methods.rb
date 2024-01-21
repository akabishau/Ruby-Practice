# method from Enumerable module
# number of items in = number of items out
# iterate over each item -> exec block -> add result in new array

# map = collect
scores = { low: 2, high: 8, avg: 6 }

adjusted_scores = scores.map do |k, v|
  "#{k.capitalize}: #{v * 100}"
end
p adjusted_scores # ARRAY, not HASH => ["Low: 200", "High: 800", "Avg: 600"]

# keep in mind
fruits = ["apple", "banana", "pear"]
y = fruits.map do |fruit|
  fruit.capitalize if fruit == "pear"
end
p y # => [nil, nil, "Pear"]

# normally don't use map to print
cap_fruts = fruits.map { |fruit| puts fruit.capitalize }
p cap_fruts # => [nil, nil, nil], but prints capitalized fruits

# map! - changes original array
