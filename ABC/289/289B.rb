n, m = gets.split.map(&:to_i)
M = gets.split.map(&:to_i)

tmp_array = []
answer_array = []
(1..n).each do |i|
  tmp_array.unshift(i)
  if M[0] == i
    M.shift
  else
    answer_array += tmp_array
    tmp_array = []
  end
end

puts answer_array.join(" ")