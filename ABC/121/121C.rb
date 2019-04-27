n, m = gets.split.map(&:to_i)
a = []
b = {}
n.times do
  x, y = gets.split.map(&:to_i)
  if a.include?(x)
    b[x] += y
  else
    a.push(x)
    b[x] = y
  end
end

p b
count = 0
money = 0

dd = a.sort
dd.each do |d|
  if b[d] + count >= m
    money += (m - count) * d
    break
  end

  money += d * b[d]
  count += b[d]

end


p money