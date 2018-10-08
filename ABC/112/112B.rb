n, t = gets.split.map(&:to_i)
c = Array.new(n) { Array.new(2) }
(0..n-1).each do |i|
   x, y = gets.split.map(&:to_i)
   c[i][0] = x
   c[i][1] = y
end

d = []
(0..n-1).each do |i|
  if c[i][1] <= t
    d.push(c[i][0])
  end
end

puts d.min.nil? ? "TLE" : d.min