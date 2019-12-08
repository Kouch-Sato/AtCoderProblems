n = gets.to_i
l = gets.split.map(&:to_i).sort
count = 0

(0..n-3).each do |i|
  (i+1..n-2).each do |j|
    sum = l[i] + l[j]
    (j+1..n-1).each do |k|
      if sum > l[k]
        count += 1
      else
        break
      end
    end
  end
end

puts count
