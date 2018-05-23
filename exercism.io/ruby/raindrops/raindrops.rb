module BookKeeping
  VERSION = 3
end
# Convert a number to a string, the contents depend on the number's factors.
class Raindrops
  def self.convert(num)
    res = ''
    f = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    f.each { |k, v| res += v if (num % k).zero? }
    res.empty? ? num.to_s : res
  end
end
