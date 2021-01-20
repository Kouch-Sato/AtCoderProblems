s = gets.chomp.split("")
$s = s
$sum = 0

def dfs(i, text)
  if i == ($s.size - 1)
    $sum += eval(text)
    return
  end

  dfs(i + 1, text + $s[i + 1])
  dfs(i + 1, text + "+" + $s[i + 1])

end

dfs(0, s[0])
puts $sum