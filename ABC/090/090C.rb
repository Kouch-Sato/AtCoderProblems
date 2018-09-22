n, m = gets.chomp.split(" ").map(&:to_i)
count = 0
if n == 1
  if m == 1
    count = 1
  else
    count = m - 2
  end
elsif m == 1
  count = n - 2
elsif
  count = (n-2) * (m-2)
end

p count