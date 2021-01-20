$h, $w = gets.split.map(&:to_i)
c = []

$h.times do
  c << gets.chomp.split("")
end
$c = c

def dfs(i, j)
  if i < 0 || j < 0 || i >= $h || j >= $w
    return
  end

  if $c[i][j] == "g"
    puts "Yes"
    exit
  end

  if $c[i][j] == "#"
    return
  end

  $c[i][j] = "#"
  dfs(i + 1, j)
  dfs(i - 1, j)
  dfs(i, j + 1)
  dfs(i, j - 1)
end

$h.times do |i|
  $w.times do |j|
    if c[i][j] == "s"
      dfs(i, j)
    end
  end
end

puts "No"