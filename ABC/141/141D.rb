n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

m.times do
  max_index = a.index(a.max)
  a[max_index] /= 2
end

puts a.inject(:+)