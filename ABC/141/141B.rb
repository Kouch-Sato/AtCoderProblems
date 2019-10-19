s = gets.split("")
ans = "Yes"
n = s.size
n.times do |i|
  if i.odd?
    if s[i] == "R"
      ans = "No"
      break
    end
  end

  if i.even?
    if s[i] == "L"
      ans = "No"
      break
    end
  end
end

puts ans