n = gets.to_i
w = []
(0..(n-1)).each do |i|
  w[i] = gets.split.map(&:to_i)
end

isEven = (w[0][0] + w[0][1]).even?
ending = 1

(0..(n-1)).each do |i|
  if (w[i][0] + w[i][1]).even? != isEven
    ending = 0
    break
  end
end

def hahaha(n)
  if n == 2
    return "UUUUUUDDDD"
  elsif n == 4
    return "UUUUUUUDDD"
  elsif n == 6
    return "UUUUUUUUDD"
    elsif n == 8
    return "UUUUUUUUUD"
    elsif n == 10
    return "UUUUUUUUUU"
    elsif n == 0
    return "UUUUUDDDDD"
    elsif n == -2
    return "UUUUDDDDDD"
    elsif n == -4
    return "UUUDDDDDDD"
      elsif n == -6
    return "UUDDDDDDDD"
  elsif n == -8
    return "UDDDDDDDDD"
  elsif n == -10
    return "DDDDDDDDDD"




if ending == 0
  puts -1
else
  if isEven
    puts "20"
    b = []
    20.times do |i|
      b.push(1)
    end
    puts b.join(" ")
    (0..(n-1)).each do |i|
      if w[i][0] ==

  else
    puts "19"
    b = []
    19.times do |i|
      b.push(1)
    end
    puts b.join(" ")
  end
end


