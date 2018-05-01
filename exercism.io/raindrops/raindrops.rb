# Convert a number to a string, the contents depend on the number's factors.
class Raindrops
  def self.convert(num)
    res = ''
    f = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    f.each do |k, v|
      res += v if (num % k).zero?
    end
    res.empty? ? num.to_s : res
  end
end
