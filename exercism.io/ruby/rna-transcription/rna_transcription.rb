# Given a DNA strand, return its RNA complement (per RNA transcription).
class Complement
  def self.of_dna(str)
    res = ''
    unless /[BD-FH-SU-Z]/ =~ str
      str.each_char do |i|
        res += transc(i)
      end
    end
    res
  end

  def self.transc(char)
    case char
    when 'G' then 'C'
    when 'C' then 'G'
    when 'T' then 'A'
    when 'A' then 'U'
    end
  end
end
