# inject (reduce is alias for inject)
# accumulator; Ruby convention is to use 'meme'

# if initial not provided the first value is used as initial_operand
# if initial provided the first value is used as memo, and the second value is the first element of the collection
# if no block given, the method will return an enumerator

# Sum, without initial_operand.
(1..5).inject { |memo, n| memo + n } # => 15 (1 + 2 + 3 + 4 + 5)
# Sum, with initial_operand.
(1..5).inject(0) { |memo, n| memo + n } # => 15 (0 + 1 + 2 + 3 + 4 + 5)

(1..5).inject { |memo, n| memo + n} # => 15 (1 + 2 + 3 + 4 + 5)
# Sum, without initial_operand.
(1..4).inject(:+)     # => 10
# Sum, with initial_operand.
(1..4).inject(10, :+) # => 20
(1..4).inject(10) { |memo, n| memo + n } # => 20
