n = gets.to_i
s = Array.new(n)
for i in 0..(n-1) do
  s[i] = gets.chomp
end

m = gets.to_i
t = Array.new(m)
for i in 0..(m-1) do
  t[i] = gets.chomp
end

max = 0

for i in 0..(n-1) do
  count = s.count(s[i]) - t.count(s[i])
  max = [count, max].max
end

p max

