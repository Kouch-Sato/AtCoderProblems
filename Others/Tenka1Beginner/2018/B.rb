a, b, k = gets.split.map(&:to_i)
(1..k).each do |i|
  if i.odd?
    a /= 2
    b += a
  else
    b /= 2
    a += b
  end
end

puts "#{a} #{b}"
