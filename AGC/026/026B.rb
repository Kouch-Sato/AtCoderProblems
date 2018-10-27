n = gets.to_i
t = Array.new(n) {Array.new(4)}
(0..(n-1)).each do |i|
  t[i] = gets.split.map(&:to_i)
end


(0..(n-1)).each do |i|
  a = t[i][0]
  b = t[i][1]
  c = t[i][2]
  d = t[i][3]
  x = a
  xlist = []
  if !(b <= d && a >= b && (a % b) <= c)
    puts "No"
    next
  end
  while (x >= 0)
    xlist.push(x)
    x -= b
    if x < 0
      puts "No"
      break
    end
    if x <= c
      x += d
    end
    if xlist.include?(x)
      puts "Yes"
      break
    end
    if (x % b) == (a % b)
      puts "Yes"
      break
    end
  end
end