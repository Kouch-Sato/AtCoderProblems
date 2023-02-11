n, x = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.split.map(&:to_i)
end

rest = x * 100
n.times do |i|
  rest -= array[i][0] * array[i][1]
  if rest < 0
    puts i + 1
    exit
  end
end

puts -1