n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

array = Array.new(n) { 100000000000 }
array[0] = 0
array[1] = a[0]
(2..n-1).each do |i|
  array[i] = [array[i-1] + a[i-1], array[i-2] + b[i-2]].min
end

puts array[n-1]
