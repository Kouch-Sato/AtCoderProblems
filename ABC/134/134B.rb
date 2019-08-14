n, d = gets.split.map(&:to_i)
dd = 2 * d + 1
if n % dd == 0
  p n / dd
else
  p n / dd + 1
end
