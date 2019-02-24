def solution(a)
  max = a[0]
  min = a[0]
  sum = 0
  count = 0
  a.each do |b|
    if b > max
      max = b
    end

    if b < min
      min = b
    end

    count += 1
    sum += b
  end

  ans = 1.0 * ( sum -  max - min ) / ( count - 2 )
  ans
end

puts solution([1,2,3,6,10])