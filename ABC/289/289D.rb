# 結論：このやり方だとTLE

$n = gets.to_i
$n_array = gets.split.map(&:to_i)
m = gets.to_i
$m_array = gets.split.map(&:to_i)
$x = gets.to_i

$answer = "No"
$get_sum = []

def loop(sum)
  if $get_sum.include?(sum)
    return
  end

  $get_sum << sum
  if sum == $x
    $answer = "Yes"
    return
  end

  if sum > $x || $m_array.include?(sum)
    return
  end

  $n.times do |i|
    loop(sum + $n_array[i])
  end
end

loop(0)

puts $answer