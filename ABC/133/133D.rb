n = gets.to_i
a = gets.split.map(&:to_i)

x = 0
n.times do |i|
  if i.even?
    x += a[i]
  else
    x -= a[i]
  end
end

answer = []
last = x
answer << x
(n-1).times do |j|
  last = a[j] * 2 - last
  answer << last
end

puts answer.join(" ")