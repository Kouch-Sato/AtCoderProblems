n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
x = 0
for i in a do
  while i % 2 == 0
    i /= 2
    x += 1
  end
end
print(x)