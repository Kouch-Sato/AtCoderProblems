s = gets.chomp.split("").map{ |i| 1 - i.to_i}
puts s.join("")