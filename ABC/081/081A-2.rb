s = gets.split("").map(&:to_i)
# p s.inject {|sum, i| sum += i}
p s.inject(:+)