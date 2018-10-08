n, m = gets.split.map(&:to_i)

require 'prime'

class Integer
  def my_divisor_list2
    return [1] if self == 1
    Prime.prime_division(self).map do |e|
      Array.new(e[1]+1).map.with_index do |element, i|
        e[0]**i
      end
    end.inject{|p,q| p.product(q)}.map do |a|
      [a].flatten.inject(&:*)
    end.sort
  end
end

a = m.my_divisor_list2
b = 1
a.each do |i|
  if i >= n
    b = i
    break
  end
end

puts m/b
