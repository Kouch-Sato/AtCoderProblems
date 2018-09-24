n, m, x, y =  gets.chomp.split.map(&:to_i)
x1 = gets.chomp.split.map(&:to_i)
y1 = gets.chomp.split.map(&:to_i)
_x = [x1.max, x].max
_y = [y1.min, y].min
puts _x < _y ? "No War" : "War"