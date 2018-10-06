a = 3.times.map { gets.chomp.split.map(&:to_i) }
d = Array.new(2) { Array.new(3) }
(0..2).each do |i|
  d[0][i] = a[i][0] - a[i][1]
  d[1][i] = a[i][0] - a[i][2]
end

key = 1
(0..1).each do |i|
  if d[i].min != d[i].max
    key = 0
  end
end

puts key == 1 ? "Yes" : "No"