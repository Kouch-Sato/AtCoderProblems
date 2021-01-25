n = gets.to_i
array = []
n.times do
  x, l = gets.split.map(&:to_i)
  array << [x - l, x + l]
end

array.sort_by!{ |a| a[1] }

last = array[0][1]
ans = 1

n.times do |i|
  if last <= array[i][0]
    ans += 1
    last = array[i][1]
  end
end

puts ans