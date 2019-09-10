n = gets.to_i
b = gets.split.map(&:to_i)

sum = 0
n.times do |i|
  if i == 0
    sum += b[i]
    next
  end

  if i == n-1
    sum += b[i-1]
    break
  end

  sum += [b[i], b[i-1]].min
end

puts sum