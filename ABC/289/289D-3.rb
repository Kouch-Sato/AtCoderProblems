#結論：再帰関数が良くない。Loopで綺麗にできるようにする。
# 回答に合わせて自分で直してみる

$n = gets.to_i
$n_array = gets.split.map(&:to_i)
m = gets.to_i
$m_array = gets.split.map(&:to_i)
$x = gets.to_i

$dp = Array.new($x + 1, 0)

$m_array.each do |i|
  $dp[i] = -1
end

$dp[0] = 1

(1..$x).each do |i|
  if $dp[i] == -1
    next
  end

  $n_array.each do |move|
    unless i >= move
      next
    end

    if $dp[i - move] == 1
      $dp[i] = 1
      break
    end
  end
end


puts $dp[$x] == 1 ? "Yes" : "No"