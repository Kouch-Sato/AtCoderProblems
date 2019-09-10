s = gets.chomp.split("").map(&:to_i)
n = s.length
all = 2 ** (n - 1)
answer = 0
all.times do |i|
  array = []
  (n - 1).times do |j|
    if i.odd?
      array << j
    end
    i /= 2
  end

  sum = 0
  tmp = []
  n.times do |k|
    tmp << s[k]
    if array.include?(k) || k == (n - 1)
      num = tmp.join("").to_i
      sum += num
      tmp = []
    end
  end

  answer += sum
end

puts answer