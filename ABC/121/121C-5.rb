n, m = gets.chomp.split.map(&:to_i)

array = []
n.times do
  a, b = gets.chomp.split.map(&:to_i)
  array << [a, b]
end

array.sort_by!{ |x| x[0] }

sum = 0
rest = m
array.each do |a, b|
  if rest - b <= 0
    sum += rest * a
    break
  end

  sum += a * b
  rest -= b
end

puts sum