n = gets.to_i
a = Array.new(n) { Array.new(2) }
n.times do |i|
  a[i][0], a[i][1] = gets.split.map(&:to_i)
end

max = 0
maxi = 0
n.times do |i|
  if a[i][0] > max
    max = a[i][0]
    maxi = i
  end
end

p a[maxi][0] + a[maxi][1]
