num_array = gets.chomp.split("")
$num_array = num_array

def dfs(i, text)
  if i == 3
    if eval(text) == 7
      text += "=7"
      puts text
      exit
    else
      return
    end
  end

  dfs(i + 1, text + "+" + $num_array[i + 1])
  dfs(i + 1, text + "-" + $num_array[i + 1])
end

dfs(0, num_array[0])