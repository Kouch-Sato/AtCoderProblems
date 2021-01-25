n, x = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.split.map(&:to_f)
end

rest = x.to_f
n.times do |i|
  rest -= array[i][0] * array[i][1] / 100.0
  if rest < 0.0
    puts i + 1
    exit
  end
end

puts -1