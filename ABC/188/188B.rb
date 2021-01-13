n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
naiseki = 0
n.times do |i|
  naiseki += a[i] * b[i]
end

if naiseki == 0
  puts "Yes"
else
  puts "No"
end