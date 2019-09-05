n = gets.to_i
sum = 0

10.times do |i|
  if  n < 10 ** (i + 1)
    if i.even?
      sum += (n - 10 ** i + 1)
    end

    break
  end

  if i.even?
    sum += 10 ** i * 9
  end
end

puts sum