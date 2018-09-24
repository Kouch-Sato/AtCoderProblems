n, a, b = gets.split.map(&:to_i)
count = 0
(1..n).each do |i|
  sum = i.to_s.split("").map(&:to_i).inject(:+)
  if a <= sum && sum <= b
    count += i
  end
end

p count