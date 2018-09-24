a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i
count = 0
for i in 0..a do
  x1 = x - (500 * i)
  if x1 < 0
    break
  end

  for j in 0..b do
    x2 = x1 - (100 * j)
    if x2 < 0
      break
    end

    if (x2 / 50) <= c
      count += 1
    end
  end
end

p count
