n, m, a, b = gets.chomp.split(" ").map(&:to_i)
t = Array.new(m) { Array.new(2) }
for i in t do
  i[0], i[1] = gets.chomp.split(" ").map(&:to_i)
end

if a >= b
  p n * a
else
  count = 0
  for i in 1..n do
    for j in t do
      if ( j[0] <= i ) && ( i <=  j[1] )
        count += 1
        break
      end
    end
  end

  p ( count * a ) + ( (n - count) * b)
end
