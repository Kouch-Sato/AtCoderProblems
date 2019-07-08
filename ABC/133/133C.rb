l, r = gets.split.map(&:to_i)

if l + 2019 < r
  p 0
  exit
end

min = 2018

(l..r-1).each do |i|
  (i+1..r).each do |j|
    a = i * j % 2019
    min = a if a < min
  end
end

p min