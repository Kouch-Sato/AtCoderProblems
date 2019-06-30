n = gets.to_i
p = gets.split.map(&:to_i)
count = 0
(n-2).times do |i|
  array = [p[i], p[i+1], p[i+2]]
  if array.max == p[i+1]
    next
  end

  if array.min == p[i+1]
    next
  end

  count += 1
end

puts count