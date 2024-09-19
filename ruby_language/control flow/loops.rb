while i < 3
  i += 1
end


until i > 3
  i -= 1
end


for i in 0..3 # for fruts in fruits
  puts i
end


[1, 2, 3].each do |a|
  puts a
end

#####################

3.times do
  puts "Hello"
end

#####################
# very old style
loop do
  puts i
  i += 1
  break if i > 3
end
