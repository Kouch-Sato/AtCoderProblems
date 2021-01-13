n = gets.to_i
aoki_score_sum = 0
get_scores = []
n.times do
  a, b = gets.split.map(&:to_i)
  aoki_score_sum += a
  get_score = 2 * a + b
  get_scores << get_score
end

get_scores.sort_by!{|x| x.to_i * (-1)}

count = 0
n.times do
  if aoki_score_sum >= 0
    count += 1
    aoki_score_sum -= get_scores.shift
  end
end

puts count
