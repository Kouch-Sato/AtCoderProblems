k = gets.chomp.to_i
s = gets.chomp
if s.length <= k
  puts s
  exit
end

puts s[0..k-1] + "..."