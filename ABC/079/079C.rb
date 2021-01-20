num_array = gets.chomp.split("").map(&:to_i)

$num_array = num_array

$answer = ""
def dfs(i, sum, array)
  num = $num_array[i]
  up_sum = sum + num
  up_array = array + ["+", num]

  down_sum = sum - num
  down_array = array + ["-", num]

  if i == 3
    if up_sum == 7
      up_array << "="
      up_array << "7"
      $answer = up_array.join("")
    end

    if down_sum == 7
      down_array << "="
      down_array << "7"
      $answer =  down_array.join("")
    end

    return
  end

  dfs(i + 1, up_sum, up_array)
  dfs(i + 1, down_sum, down_array)
end

dfs(1, num_array[0], [num_array[0]])
puts $answer