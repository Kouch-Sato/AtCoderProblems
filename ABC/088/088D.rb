h, w = gets.split.map(&:to_i)
s = []
h.times do
  s << gets.chomp.split("")
end

dist = Array.new(h) { Array.new(w, -1) }
dist[0][0] = 0
que = []
que.push([0, 0])

da = [0, 1, 0, -1]
db = [1, 0, -1, 0]

while que.size > 0
  a, b = que.shift

  4.times do |i|
    na = a + da[i]
    nb = b + db[i]

    if na < 0 || na >= h || nb < 0 || nb >= w
      next
    end

    if s[na][nb] == "#"
      next
    end

    unless dist[na][nb] == -1
      next
    end

    dist[na][nb] = dist[a][b] + 1
    que.push([na, nb])
  end
end

goal_dist = dist[h-1][w-1]

if goal_dist == -1
  puts -1
  exit
end

white_count = s.flatten.count(".")
puts white_count - goal_dist - 1
