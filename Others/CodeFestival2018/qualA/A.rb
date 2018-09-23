a = gets.to_i
b = gets.to_i
c = gets.to_i
s = gets.to_i
t3 = [a + b + c]
if (t3.include?(s) || t3.include?(s-1) || t3.include?(s-2) || t3.include?(s-3))
  puts "Yes"
else
  puts "No"
end