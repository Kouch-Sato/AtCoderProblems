
def cal_min(wants, array, points)
  aa = []
  3.times do |i|
    want = wants[i].to_i
    if array.include?(want)
      aa << want
      array.delete_at(array.find_index(want))
    end
  end

  array.each do |k|
    if k < 0 || k > 1000
      return 10000000
    end
  end

  nn = array.count

  aa.each do |aaa|
    wants.delete(aaa)
  end

  if wants.size == 0
    return points
  end

  min_array = []

  nn.times do |i|
    new_array2 = array
    if new_array2[i] && wants.size > 0
      if new_array2[i].to_i < wants.min
        next
      end
      new_array2[i] = new_array2[i] - 1
      min_array << cal_min(wants, new_array2, points) + 1
    end
  end

  nn.times do |i|
    new_array = array
    if new_array[i] && wants.size > 0
      if new_array[i].to_i > wants.max
        next
      end
      new_array[i] = new_array[i] + 1
      min_array << cal_min(wants, new_array, points) + 1
    end
  end

  if array.size > wants.size
    nn.times do |i|
      nn.times do |j|
        if i == j
          next
        end
        new_array3 = array
        sum = new_array3[i].to_i + new_array3[j].to_i
        if i > j
          new_array3.delete_at(i)
          new_array3.delete_at(j)
        else
          new_array3.delete_at(j)
          new_array3.delete_at(i)
        end

        new_array3 << sum
        p new_array3
        min_array << cal_min(wants, new_array3, points) + 10
      end
    end
  end

  return min_array.min
end

n, a, b, c = gets.chomp.split.map(&:to_i)
wants = [a, b, c]
array = []
n.times do
  array << gets.to_i
end

# p cal_min([100, 90, 80], [100, 90, 80, 70], 0)
p cal_min(wants, array,0)
