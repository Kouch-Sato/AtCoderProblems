n, m = gets.split.map(&:to_i)
a = []
b = []
n.times do
  x, y = gets.split.map(&:to_i)
  a.push(x)
  b.push(y)
end

count = 0
money = 0

dd = a.sort
dd.each do |d|
  index = a.index(d)
  if b[index] + count >= m
    money += (m - count) * d
    break
  end

  money += d * b[index]
  count += b[index]
  a[a.index(d)] = 0

end


p money