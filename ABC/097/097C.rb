s = gets
k = gets.to_i
strings = []
i = 0

("a".."z").each do |x|
  if i >= 5
    break
  end
  y = x
  if s.include?(y)
    strings[i] = y
    i += 1
    ("a".."z").each do |x1|
      if i >= 5
        break
      end
      y1 = x + x1
      if s.include?(y1)
        strings[i] = y1
        i += 1
        ("a".."z").each do |x2|
          if i >= 5
            break
          end
          y2 = y1 + x2
          if s.include?(y2)
            strings[i] = y2
            i += 1
            ("a".."z").each do |x3|
              if i >= 5
                break
              end
              y3 = y2 + x3
              if s.include?(y3)
                strings[i] = y3
                i += 1
                ("a".."z").each do |x4|
                  if i >= 5
                    break
                  end
                  y4 = y3 + x4
                  if s.include?(y4)
                    strings[i] = y4
                    i += 1
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

puts strings[k-1]
