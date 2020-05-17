n = gets.to_i
s, t = gets.split
array = []
n.times do |i|
  array << s[i]
  array << t[i]
end

puts array.join("")