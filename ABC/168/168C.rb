a, b, h, m = gets.chomp.split.map(&:to_i)
zikan = h + m.to_f / 60
kakudo = zikan.to_f / 12 * 360 - m.to_f / 60 * 360

cc = a * a + b * b - 2 * a * b * Math.cos(kakudo / 180 * Math::PI)
c = Math.sqrt(cc)
puts c