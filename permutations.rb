class Integer
  def factorial
    (1..self).reduce(:*) || 1
  end
end

print "Enter the number of different colored tiles: "
tiles = gets.chomp

if tiles.match(/\A\d+\z/) == nil || tiles == '0'
  puts "Error: Please enter a valid, positive integer."
else
  t_start = Time.now
  tiles_array = [*1..tiles.to_i].map{ |x| "t#{x}" }
  tiles_array.permutation{|y| puts y.join('_')}
  t_end = Time.now
  duration = t_end - t_start

  if tiles_array.length == 1
    puts "There is 1 permutation using 1 tile."
  else
    puts "There are #{tiles_array.length.factorial} permutations using #{tiles} tiles."
  end
  puts "It took #{duration} seconds to output."
end
