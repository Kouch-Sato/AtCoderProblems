a = gets.split("")
is_bad = false
3.times do |i|
  if a[i] == a[i+1]
    is_bad = true
  end
end

puts is_bad ? "Bad" : "Good"