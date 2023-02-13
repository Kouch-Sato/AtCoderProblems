n = gets.to_i
a = gets.split.map(&:to_i)
m = gets.to_i
b = gets.split.map(&:to_i)
x = gets.to_i

dp = Array.new(x + 1, 0)
available = Array.new(x + 1, 1)

b.each do |b_i|
  available[b_i] = 0
end

dp[0] = 1

$count = 0

(1..x).each do |i|
  if available[i] == 0
    dp[i] = 0
  else
    a.each do |a_i|
      $count += 1
      if i >= a_i
        dp[i] |= dp[i - a_i]
      end
    end
  end
end

puts dp[x] == 1 ? "Yes" : "No"
puts $count