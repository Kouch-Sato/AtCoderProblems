x, y = gets.split.map(&:to_i)
dif = (x - y).abs
if dif < 3
  puts "Yes"
else
  puts "No"
end