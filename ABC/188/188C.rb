n = gets.to_i
a = gets.split.map(&:to_i)

first_scores = a[0, 2 ** (n-1)]
last_scores = a[2 ** (n-1), 2 ** n]
first_max_score = first_scores.max
last_max_score = last_scores.max
if first_max_score < last_max_score
  puts a.index(first_max_score) + 1
else
  puts a.index(last_max_score) + 1
end