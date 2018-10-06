n = gets.to_i
a = []
(1..9).each do |i|
  a.push(i * 111)
end

a.each do |i|
  if i >= n
    puts i
    break
  end
end