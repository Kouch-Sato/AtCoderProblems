n = gets.to_i
d = n.times.map { gets.to_i }
d = d.sort.uniq
p d.length