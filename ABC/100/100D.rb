n, m = gets.chomp.split(" ").map(&:to_i)
a = Array.new(n, Array.new(3))
for i in 0..(n-1) do
  a[i] = gets.chomp.split(" ").map(&:to_i)
end
b = Array.new(8) { Array.new(n) }
for i in 0..(n-1) do
  b[0][i] = a[i][0] + a[i][1] + a[i][2]
  b[1][i] = a[i][0] + a[i][1] - a[i][2]
  b[2][i] = a[i][0] - a[i][1] + a[i][2]
  b[3][i] = a[i][0] - a[i][1] - a[i][2]
  b[4][i] = - a[i][0] + a[i][1] + a[i][2]
  b[5][i] = - a[i][0] + a[i][1] - a[i][2]
  b[6][i] = - a[i][0] - a[i][1] + a[i][2]
  b[7][i] = - a[i][0] - a[i][1] - a[i][2]
end

for i in 0..7 do
  b[i] = b[i].sort{|a, b| b <=> a }
end

c = Array.new(8, 0)
for i in 0..7 do
  for j in 0..(m-1) do
    c[i] += b[i][j]
  end
end

p c.max
