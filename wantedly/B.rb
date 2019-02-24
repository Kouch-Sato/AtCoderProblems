
def solution(s)
  opes = s.split
  stack = []
  opes.each do |ope|
    case ope
    when "POP" then
      if stack.size == 0
        return -1
      end
      stack.pop
    when "DUP" then
      if stack.size == 0
        return -1
      end
      stack.push(stack.last)
    when "+" then
      if stack.size < 2
        return -1
      end
      tmp = stack.pop + stack.pop
      if tmp > 2 ** 10 - 1
        return -1
      end
      stack.push(tmp)
    when "-" then
      if stack.size < 2
        return -1
      end
      tmp = stack.pop - stack.pop
      if tmp < 0
        return -1
      end
      stack.push(tmp)
    else
      stack.push(ope.to_i)
    end
  end
  stack.last
end

p solution("3 DUP 5 - -")