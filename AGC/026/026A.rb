n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
(0..(n-1)).each do |i|
  if i == 0 || a[i] == 0
    next
  else
    if a[i] == a[i-1]
      a[i] = 0
      count += 1
    end
  end
end

p count

