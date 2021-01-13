n, cc = gets.split.map(&:to_i)
main_array = []
n.times do
  main_array << gets.split.map(&:to_i)
end

events = []
main_array.each do |a, b, c|
  events << [a, c]
  events << [b + 1, c * (-1)]
end

events.sort! { |a, b| a[0] <=> b[0] }
days_events = events.group_by{ |a| a[0] }

sum = 0
pre_day = 0
pre_price = 0
days_events.each do |key, value|
  day = value[0][0]
  real_price = [cc, pre_price].min
  sum += (day - pre_day) * real_price

  pre_day = day
  value.each do |price|
    pre_price += price[1]
  end
end


p sum
