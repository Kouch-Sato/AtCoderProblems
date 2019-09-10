n = gets.to_i
p = gets.split.map(&:to_i)
sum = 0

(0..n-2).each do |l|
  max1 = 0
  max2 = 0
  (l..n-1).each do |r|
    if p[r] >= max1
      max2 = max1
      max1 = p[r]
    elsif p[r] > max2
      max2 = p[r]
    end

    sum += max2
  end
end

puts sum