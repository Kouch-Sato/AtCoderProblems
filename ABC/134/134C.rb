n = gets.to_i
array = []
n.times do
  array << gets.to_i
end

array_sort = array.sort{ |a, b| b <=> a }
max1 = array_sort[0]
max2 = array_sort[1]

n.times do |i|
  x = array[i]
  if x == max1
    p max2
  else
    p max1
  end
end

