module BookKeeping
  VERSION = 3
end
# Implement run-length encoding and decoding
class RunLengthEncoding
  def self.encode(input)
    res = ''
    input.each_char.with_index do |c, i|
      res << encoding(input, c, i) if c != res[-1]
    end
    res
  end

  def self.encoding(input, char, index)
    val = ''
    until input[index] != char
      val << char
      index += 1
    end
    "#{val.length if val.length > 1}#{val[0]}"
  end

  def self.decode(input)
    val = res = ''
    input.each_char do |c|
      if c =~ /[\d]/
        val += c
      else
        res << (val.empty? ? c : c * val.to_i)
        val = ''
      end
    end
    res
  end
end
