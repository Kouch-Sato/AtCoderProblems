class Array
  def gcd
    self.inject{|a,b| a.gcd(b)}
  end
end

n = gets.to_i
a = gets.chomp.split.map(&:to_i)

p a.gcd
