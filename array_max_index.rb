array = (1..10).to_a.shuffle!
puts "Array: #{array}\n\n"

# Method 1 - built in Ruby methods
puts "Method 1\n-----"
puts "Highest Value: #{array.max}"
puts "Index: #{array.index(array.max)}"

# Method 2 - using Ruby logic
index = 0
highest_value = 0

array.each do |x|
  if index == 0
    highest_value = x
  elsif x > highest_value
    highest_value = x
  else
    highest_value
  end
  index +=1
end

puts "\nMethod 2\n-----"
puts "Highest Value: #{highest_value}"
puts "Index: #{array.index(highest_value)}"
