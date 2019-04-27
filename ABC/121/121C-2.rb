n, m = gets.split.map(&:to_i)
a = []
b = []
n.times do
  x, y = gets.split.map(&:to_i)
  a.push(x)
  b.push([x, y])
end

count = 0
money = 0

dd = a.sort.uniq
dd.each do |d|
  b2 = 0
  b.each do |k|
    if k[0] == d
      b2 += k[1]
    end
  end
  if b2 + count >= m
    money += (m - count) * d
    break
  end

  money += d * b2
  count += b2

end


p money