n, k = gets.chomp.split(" ").map(&:to_i)
count = 0
for i in (k+1)..n
  x, y = n.divmod(i)
  if k == 0
    count += (x * (i - k))
    count += [0, y - k].max
  else
    count += (x * (i - k))
    count += [0, y - k + 1].max
  end
end

p count