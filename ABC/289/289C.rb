$n, $m = gets.split.map(&:to_i)
c = []
$m_array = []
$m.times do
  c << gets.to_i
  $m_array << gets.split.map(&:to_i)
end

$answer = 0

def loop(array, i)
  if i == $m
    if array.uniq.size == $n
      $answer += 1
    end
  else
    loop(array, i + 1)
    array += $m_array[i]
    loop(array, i + 1)
  end
end

loop(Array.new, 0)
puts $answer