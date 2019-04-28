n,q = gets.chomp.split.map(&:to_i)
s = gets.chomp
array = []
q.times do |i|
  l, r = gets.chomp.split.map(&:to_i)
  array.push([l-1, r-1])
end

ac_array = []
n.times do |i|
  if i == 0
    ac_array << 0
    next
  end

  if s[i-1, 2] == 'AC'
    ac_array << ac_array[i-1] + 1
  else
    ac_array << ac_array[i-1]
  end
end

q.times do |j|
  first, last = array[j]
  if first == 0
    puts ac_array[last]
    next
  end

  puts ac_array[last] - [ac_array[first-1], ac_array[first]].max
end

