def change_number(number)
  if number == 1
    return 0
  end

  if number == 0
    return 1
  end
end

n = gets.to_i
array = gets.split.map(&:to_i)
answer = []

while true do
  count = n / 2
  (count+1..n).each do |i|
    answer.each do |bb|
      if bb % i == 0
        array[i-1] = change_number(array[i-1])
      end
    end

    if array[i-1] == 1
      answer << i
    end
  end

  n = count
  if n == 1
    break
  end
end

if array[0] == 1
  answer << 1
end

p answer.count
puts answer.join(" ")
