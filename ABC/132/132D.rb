n, k = gets.split.map(&:to_i)
w = n - k
part1 = 1
part2 = w + 1

puts part1 * part2 % (10 ** 9 + 7)

(1..k-1).each do |i|
  if k - i > 0
    part1 = part1 * (k - i) / i
  else
    part1 = 0
  end

  if w + 1 - i > 0
    part2 = part2 * (w + 1 - i) / (i + 1)
  else
    part2 = 0
  end

  puts part1 * part2 % (10 ** 9 + 7)
end