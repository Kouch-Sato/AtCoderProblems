s = gets.chomp.split("")
n = s.count
sum = 0

$s = s
$n = n
$sum = sum

def dfs(i, array)
  if i == ($n - 1)
    array << $s[i]
    array = array.join("").split("+").map(&:to_i)
    $sum += array.sum

    return
  end

  array_1 = array + [$s[i]]
  dfs(i + 1 , array_1)

  array_2 = array + [$s[i], "+"]
  dfs(i + 1 , array_2)
end

dfs(0, [])
p $sum