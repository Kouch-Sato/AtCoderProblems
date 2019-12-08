n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
count = 0
n.times do |i|
  if h[i] >= k
    count += 1
  end
end

puts count