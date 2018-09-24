n = gets.to_i
a = gets.split.map(&:to_i)
a = a.sort { |a, b| b <=> a }
s = 0
t = 0

(0..(n-1)).each do |i|
  if i.even?
    s += a[i]
  else
    t += a[i]
  end
end

p s - t

