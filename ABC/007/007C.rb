h, w = gets.split.map(&:to_i)
sy, sx = gets.split.map(&:to_i).map{ |n| n - 1 }
gy, gx = gets.split.map(&:to_i).map{ |n| n - 1 }

c = []
h.times do
  c << gets.chomp.split("")
end

dist = Array.new(h) { Array.new(w, -1) }
dist[sy][sx] = 0

que = []
que.push([sy, sx])

while que.count > 0
  y, x = que.shift

  n_c_array = [
    [y + 1, x],
    [y - 1, x],
    [y, x + 1],
    [y, x - 1]
  ]

  n_c_array.each do |c2|
    ny, nx = c2
    if c[ny][nx] == "#"
      next
    end

    if dist[ny][nx] == -1
      dist[ny][nx] = dist[y][x] + 1
      que.push([ny, nx])
    end
  end
end

puts dist[gy][gx]