n = gets.to_i
points = []
n.times do
  points << gets.split.map(&:to_i)
end

count = 0
(n-1).times do
  x, y = points.shift

  points.each do |point|

    d_x = point[0] - x
    d_y = point[1] - y
    slope = d_y.to_f / d_x


    if slope >= -1 && slope <= 1
      count += 1
    end
  end
end

puts count