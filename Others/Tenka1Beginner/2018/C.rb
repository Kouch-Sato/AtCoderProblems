n = gets.to_i
a = Array.new(n)
(0..(n-1)).each do |i|
  a[i] = gets.to_i
end

b = a

if n == 2
  a = a.sort
  p a[1]-a[0]
elsif n == 3
  a = a.sort
  p [(a[2]*2-a[0]-a[1]), (a[2]+a[1]-a[0]*2)].max
else

  if a.length.odd?
    a = a.sort!.each_slice(a.length / 2 + 1).to_a
  else
    a = a.sort!.each_slice(a.length / 2).to_a
  end

  a1 = a[0]
  a2 = a[1].sort! {|x,y| y<=>x}

  sum = 0
  l = a1.length
  if n.odd?
    (0..l-1).each do |i|
      if i == 0
        sum += (a2[0] + a2[1] - a1[0]*2)
      elsif i == (l-1) || i == (l-2)
        sum += (a2[i-1] - a1[i])
      else
        sum += (a2[i+1] + a2[i-1] - a1[i]*2)
      end
    end
  else
    (0..l-1).each do |i|
      if i == 0
        sum += (a2[0] + a2[1] - a1[0]*2)
      elsif i == (l-1)
        sum += (a2[i-1] - a1[i])
      else
        sum += (a2[i+1] + a2[i-1] - a1[i]*2)
      end
    end
  end



  if n.odd?
    a = b.sort! {|x,y| y<=>x}
    a = a.each_slice(a.length / 2 + 1).to_a
    a1 = a[0]
    a2 = a[1].sort! {|x,y| y<=>x}
    sum1 = 0
    (0..l-1).each do |i|
      if i == 0
        sum1 += (a2[0] + a2[1] - a1[0]*2)
      elsif i == (l-1) || i == (l-2)
        sum1 += (a2[i-1] - a1[i])
      else
        sum1 += (a2[i+1] + a2[i-1] - a1[i]*2)
      end
    end
    sum1 = sum1 * (-1)
    sum = [sum, sum1].max

  end

    p sum

end
