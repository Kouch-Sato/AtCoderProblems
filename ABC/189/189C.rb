n = gets.to_i
a = gets.split.map(&:to_i)

sum = 0

n.times do |i|
  min = a[i]
  (i..n-1).each do |j|
    p [i, j]
    if a[j] < min
      min = a[j]
    end
    new_sum = (j - i + 1) * min
    sum = [sum, new_sum].max
  end
end

puts sum