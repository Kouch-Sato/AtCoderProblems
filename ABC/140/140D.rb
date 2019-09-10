n, k = gets.split.map(&:to_i)
a = gets.split("")

now = 0
rl = 0
lr = 0

(n-1).times do |i|
  if a[i] == a[i+1]
    now += 1
    next
  end

  if a[i] == "L"
    lr += 1
    next
  end

  if a[i] == "R"
    rl += 1
  end
end

ans = now + [rl, k].min + [lr, k].min
puts ans