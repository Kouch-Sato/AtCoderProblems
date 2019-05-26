array = gets.chomp.split('').map(&:to_i)
n = array.length

count = 0
n.times do |i|
  answer = i.odd? ? 1 : 0
  if array[i] == answer
    count += 1
  end
end

puts [count, n - count].min