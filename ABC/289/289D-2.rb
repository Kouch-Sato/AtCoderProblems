#自分の回答をarray形式で直してみる → 結果変わらず
$n = gets.to_i
$n_array = gets.split.map(&:to_i)
m = gets.to_i
$m_array = gets.split.map(&:to_i)
$x = gets.to_i

$answer = "No"
$get_sum = Array.new($x, 0)
$die_array = Array.new($x, 0)
$m_array.each do |i|
  $die_array[i] = 1
end

$count = 0

def loop(sum)
  $count += 1
  puts $count

  if $get_sum[sum] == 1
    return
  end

  $get_sum[sum] = 0

  if sum == $x
    $answer = "Yes"
    return
  end

  if sum > $x || $die_array[sum] == 1
    return
  end

  $n.times do |i|
    loop(sum + $n_array[i])
  end
end

loop(0)

puts $answer
puts $count