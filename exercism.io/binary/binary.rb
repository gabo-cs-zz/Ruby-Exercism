module BookKeeping
  VERSION = 3
end
# Convert a binary number, represented as a string, to its decimal equivalent.
class Binary
  def self.to_decimal(string)
    raise ArgumentError if string =~ /[^01]/
    string.reverse!
    res = 0
    string.each_char.with_index { |c, i| res += 2**i if c.eql?('1') }
    res
  end
end
