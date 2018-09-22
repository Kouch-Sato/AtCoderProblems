n = gets.to_i
min = 100000000
for i in 0..n do
  count = 0
  cc = i
  while cc > 0
    count += ( cc % 6 )
    cc -= ( cc % 6 )
    cc /= 6
  end

  dd = n - i
  while dd > 0
    count += ( dd % 9 )
    dd -= ( dd % 9 )
    dd /= 9
  end

  if count < min
    min = count
  end

end

p min