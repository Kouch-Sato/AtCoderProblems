require 'prime'


n, m = gets.chomp.split.map(&:to_i)
f = m.prime_division
l = f.length
g = Array.new(l)
(0..(l-1)).each do |i|
  g[i] = f[i][1]
end


ans = 1
(0..(l-1)).each do |i|
  tmp = 1
  ((n)..(g[i] + n - 1)).each do |i|
    tmp *= i
  end
  (1..g[i]).each do |i|
    tmp /= i
  end
  ans *= tmp
  ans %= 1000000007
end
p ans

