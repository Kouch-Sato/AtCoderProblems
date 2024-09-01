n = gets.to_i
h = gets.split.map(&:to_i)

array = Array.new(n) { 100000000000 }
array[0] = 0
array[1] = (h[1] - h[0]).abs
(2..n-1).each do |i|
  change1 = (h[i] - h[i-1]).abs + array[i-1]
  change2 = (h[i] - h[i-2]).abs + array[i-2]
  array[i] = [change1, change2].min
end

puts array[n-1]
