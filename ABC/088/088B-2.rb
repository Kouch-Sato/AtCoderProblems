n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
s = 0
t = 0
until a.empty? do
  s += a.shift
  break if a.empty?
  t += a.shift
end

p s - t