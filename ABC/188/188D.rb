n, c = gets.split.map(&:to_i)
main_array = []
n.times do
  main_array << gets.split.map(&:to_i)
end

sum = 0

(10 ** 7).times do |i|
  day_sum = 0
  day = i + 1
  n.times do |j|
    if main_array[j][0] <= day && day <= main_array[j][1]
      day_sum += main_array[j][2]
    end
  end

  sum += [c, day_sum].min
end

puts sum