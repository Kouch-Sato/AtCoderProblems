a, b = gets.split.map(&:to_i)
  sum = a + b
  if sum.even?
    puts sum / 2
  else
    puts "IMPOSSIBLE"
  end