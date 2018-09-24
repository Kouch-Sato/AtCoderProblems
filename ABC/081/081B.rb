n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
while a.all?(&:even?) do
  count += 1
  a = a.map{ |i| i / 2 }
end
p count