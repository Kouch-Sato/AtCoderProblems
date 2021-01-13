n = gets.to_i

normal_array = []
crazy_array = []
n.times do
  string = gets.chomp
  if string[0] == "!"
    crazy_array << string
    next
  end

  normal_array << string
end

crazy_array.map{ |text| text.slice!("!") }

common_text_array = normal_array & crazy_array
if common_text_array.size > 0
  puts common_text_array[0]
else
  puts "satisfiable"
end