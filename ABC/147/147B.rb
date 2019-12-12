s = gets.chomp.split("")
n = s.size
re_s = s.reverse

count = 0
n.times do |i|
  unless s[i] === re_s[i]
    count += 1
  end
end

puts count / 2