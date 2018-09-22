n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
placeOne = 0
for i in 0..(n-1) do
  if a[i] == 1
    placeOne = i
  end
end

count = placeOne / (k-1)
if placeOne % (k-1) != 0
  count += 1
  placeOne = count * (k-1)
end

rest = n - placeOne - 1
count += (rest / (k-1))
if rest % (k-1) != 0
  count += 1
end

p count