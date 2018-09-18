a, b = gets.split(" ").map(&:to_i)
n = b - a
maxHeight = 0.5 * n * (n + 1)
x = maxHeight - b
print(x.to_i)