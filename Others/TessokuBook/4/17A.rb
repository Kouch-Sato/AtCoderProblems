n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

array = Array.new(n) { 100000000000 }
array[0] = 0
array[1] = a[0]
(2..n-1).each do |i|
  array[i] = [array[i-1] + a[i-1], array[i-2] + b[i-2]].min
end

answer_array = []
i = n - 1

answer_array << i + 1


while i > 0
  if i == 1
    answer_array << (i - 1) + 1
    break
  end

  if array[i] == array[i-1] + a[i-1]
    i -= 1
  else
    i -= 2
  end

  answer_array << i + 1
end

puts answer_array.size
puts answer_array.reverse.join(" ")