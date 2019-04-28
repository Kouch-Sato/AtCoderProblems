s = gets.chomp.split("")
ACGT_ARRAY = %w(A C G T)
a = []
s.each do |i|
  if ACGT_ARRAY.include?(i)
    a.push(1.to_i)
  else
    a.push(0.to_i)
  end
end

b = []
n = a.length
n.times do |i|
  j = i
  count = 0
  while a[j] == 1
    j += 1
    count += 1
  end
  b.push(count)
end

puts b.max