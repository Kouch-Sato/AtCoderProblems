n, m = gets.chomp.split.map(&:to_i)

array = []
n.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  if i == 0
    array << [a, b]
    next
  end

  i.times do |j|
    if array[j][0] > a
      array.insert(j, [a, b])
      break
    end

    if j == i-1
      array.push([a, b])
    end
  end

end

sum = 0
rest = m
array.each do |a, b|
  if rest - b <= 0
    sum += rest * a
    break
  end

  sum += a * b
  rest -= b
end

puts sum