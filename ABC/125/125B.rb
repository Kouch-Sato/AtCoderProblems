n = gets.to_i
v = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
a = []
n.times do |i|
  a.push(v[i] - c[i])
end

sum = 0
a.each do |i|
  if i > 0
    sum += i
  end
end

puts sum