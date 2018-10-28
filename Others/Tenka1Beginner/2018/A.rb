n = gets.chomp.split("")
if n.length == 2
  puts n.join("")
else
  puts "#{n[2]}#{n[1]}#{n[0]}"
end