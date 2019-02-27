n = gets.chomp.to_i
sum = 0
n.times do |i|
  x, u = gets.chomp.split
  x = x.to_f
  if u == "BTC"

    x = x * 380000

  end
  sum = sum + x

end

p sum