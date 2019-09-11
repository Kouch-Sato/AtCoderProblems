n = gets.to_i
p = gets.split.map(&:to_i)

array = []
n.times do |i|
  array << [p[i], i]
end
array.sort_by! {|a| a[0]}

order = []
array.reverse.each do |i|
  order << i[1]
end


sum = 0
big = []
n.times do |i|
  big << order[i]

  if i == 0
    next
  end

  big.sort!
  index = big.index(order[i])


  if index == big.size - 1
    dif_big = n - big[index]
  elsif index == big.size - 2
    dif_big = n - big[index + 1]
  else
    dif_big = big[index + 2] - big[index + 1]
  end

  if index == 0
    dif_small = big[index] + 1
  elsif index == 1
    dif_small = big[index-1] + 1
  else
    dif_small = big[index-1] - big[index-2]
  end

  if index > 0 && index < big.size - 1
    sum += dif_big * (big[index] - big[index-1]) * p[order[i]]
    sum += dif_small * (big[index+1] - big[index]) * p[order[i]]
  else
    sum += dif_big * dif_small * p[order[i]]
  end
  # aaa = [dif_small, dif_big, p[order[i]]]
  # p aaa
  # p sum
end

puts sum