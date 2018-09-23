n = gets.to_i
a = Array.new(n) { Array.new(2) }
b = Array.new(n) { Array.new(2) }
for i in 0..(n-1) do
  x, y = gets.chomp.split(" ").map(&:to_i)
  a[i][0] = x
  a[i][1] = y
end

for i in 0..(n-1) do
  x, y = gets.chomp.split(" ").map(&:to_i)
  b[i][0] = x
  b[i][1] = y
end

max = 0
for i in 0..(n-1) do
  count = 0
  for j in 0..(n-1) do
    if ( a[i][0] < b[j][0] ) && ( a[i][1] < b[j][1] )
      count += 1
    end
    b[j][0] = b[j][0] = 0
  end
  max = [max, count].max
end

p max