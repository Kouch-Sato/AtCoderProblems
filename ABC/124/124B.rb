n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)
max = 0
count = 0
array.each do |h|
  if h >= max
    max = h
    count += 1
  end
end

puts count