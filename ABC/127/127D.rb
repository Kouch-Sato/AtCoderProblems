n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
array = []
m.times do
  b, c = gets.split.map(&:to_i)
  array << [b, c]
end

array = array.sort_by { |x| x[1] * -1 }

sum = 0
array.each do |x|
  if a.size == 0
    break
  end

  key, value = x
  key = a.size if key > a.size

  if a[key-1] <= value
    sum += key * value
    a.shift(key)
    next
  end

  nn = a.size
  nn.times do
    if a[0] >= value
      sum += a.inject(:+)

      a = []
      break
    end

    sum += value
    a.shift(1)
  end
end


if a.size > 0
  sum += a .inject(:+)
end
puts sum