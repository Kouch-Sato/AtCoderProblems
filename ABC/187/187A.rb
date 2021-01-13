a, b = gets.chomp.split
sa = a.split("").map(&:to_i).sum
sb = b.split("").map(&:to_i).sum

p [sa, sb].max