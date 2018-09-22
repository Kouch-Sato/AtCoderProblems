n, k = gets.chomp.split(" ").map(&:to_i)
a = Array.new(n+1)
a[0] = 0

def countNumber(a, b)
  count = 0
  for i in (b+1)..a do
    if a % i >= b
      count += 1
    end
  end
  return count
end

for i in 1..n do
  a[i] = a[i-1] + countNumber(i, k)
  if i - k > 0
    if k == 0
      a[i] += (i -k) - 1
    else
      a[i] += (i -k)
    end
  end
end

p a[n]