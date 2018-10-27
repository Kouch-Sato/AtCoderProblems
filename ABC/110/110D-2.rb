require 'prime'

n, m = gets.chomp.split.map(&:to_i)
f = m.prime_division
l = f.length
g = Array.new(l)
(0..(l-1)).each do |i|
  g[i] = f[i][1]
end

fa = Array.new
fa[0] = 1
(1..(g.max + n -1)).each do |i|
  fa[i] = fa[i-1] * i
end

# ans = 1
# x = fa[n-1]
# (0..(l-1)).each do |i|
#   tmp = fa[g[i] + n - 1] / x / fa[g[i]]
#   ans *= tmp
#   ans %= 1000000007
# end
# p ans

p fa[g.max + n -1]