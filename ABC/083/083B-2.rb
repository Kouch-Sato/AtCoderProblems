n, a, b = gets.split.map(&:to_i)

def sum_digit(n)
  sum = 0
  while n > 0
    sum += n % 10
    n /= 10
  end
  return sum
end

ans = (1..n).map { |i| [i, sum_digit(i)] }
            .select { |d| a <= d[1] && d[1] <= b }
            .inject(0) { |sum, d| sum + d[0] }
p ans