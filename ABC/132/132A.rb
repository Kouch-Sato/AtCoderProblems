a = gets.split("")
array = a.uniq
count = [0, 0]

4.times do |i|
  if a[i] == array[0]
    count[0] += 1
  end

  if a[i] == array[1]
    count[1] += 1
  end
end

if count[0] == 2 && count[1] == 2
  puts "Yes"
else
  puts "No"
end
