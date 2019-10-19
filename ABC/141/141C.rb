n, k, q = gets.split.map(&:to_i)
count = Array.new(n, 0)
q.times do
  num = gets.to_i
  count[num-1] += 1
end

n.times do |i|
  ops = q - count[i]
  if k - ops > 0
    puts "Yes"
  else
    puts "No"
  end
end
