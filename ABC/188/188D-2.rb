n, cc = gets.split.map(&:to_i)
main_array = []
n.times do
  main_array << gets.split.map(&:to_i)
end

big_array = Array.new(10 ** 7) { 0 }
n.times do |i|
  a = main_array[i][0]
  b = main_array[i][1]
  c = main_array[i][2]
  (a-1..b-1).each do |j|
    big_array[j] += c
  end
end

sum = 0
big_array.each do |money|
  sum += [money, cc].min
end

p sum