n = gets.chomp[-1].to_i

if n == 3
  puts "bon"
elsif [0, 1, 6, 8].include?(n)
  puts "pon"
else
  puts "hon"
end