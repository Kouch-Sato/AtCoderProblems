n = gets.to_i
a = Array.new(n) { Array.new(3) }
a[0] = [0, 0, 0]
(1..n).each do |i|
  a[i] = gets.chomp.split.map(&:to_i)
end

key = 1
(1..n).each do |i|
  x = (a[i][1] - a[i-1][1]).abs
  y = (a[i][2] - a[i-1][2]).abs
  t = a[i][0] - a[i-1][0]
  if x  + y > t || (t - x - y).odd?
    key = 0
    break
  else
    next
  end
end

puts key == 1 ? "Yes" : "No"