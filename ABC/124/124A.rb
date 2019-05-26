a, b = gets.chomp.split.map(&:to_i)
array = [a, a-1, b, b-1].sort { |x, y| y <=> x }
puts array[0] + array[1]