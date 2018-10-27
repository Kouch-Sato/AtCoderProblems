x1, y1, x2, y2 = gets.split.map(&:to_i)
x = - (y2 - y1)
y = x2 - x1
puts "#{(x2 + x)} #{(y2 + y)} #{(x1 + x)} #{(y1 + y)}"