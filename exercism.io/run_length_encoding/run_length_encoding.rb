# Implement run-length encoding and decoding
class RunLengthEncoding
  def self.encode(input)
    i, j, res = 0, 0, ''
    input.each_char do |c|
      val = 0
      (val, i = val + 1, i + 1) until input[i] != c
      val > 1 ? res << val.to_s + input[j] : (res << input[j] if val == 1)
      j += 1
    end
    res
  end

  def self.decode(input)
    i = res = ''
    input.each_char do |c|
      if c =~ /[0-9]/
        i += c; next
      else
        i.empty? ? res << c : i.to_i.times { res << c }
        i = ''
      end
    end
    res
  end
end
