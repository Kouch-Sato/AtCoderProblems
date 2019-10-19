s = gets.chomp
t = ["Sunny", "Cloudy", "Rainy"]
index = t.index(s)
if index == 2
  n_index = 0
else
  n_index = index + 1
end
puts t[n_index]