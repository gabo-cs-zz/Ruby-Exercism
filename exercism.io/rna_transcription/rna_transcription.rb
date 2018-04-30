# Given a DNA strand, return its RNA complement (per RNA transcription).
class Complement
  def self.of_dna(str)
    res = ''
    unless /[BD-FH-SU-Z]/ =~ str
      str.size.times do |i|
        res += transc(str[i])
      end
    end
    res
  end

  def self.transc(char)
    res = ''
    case char
    when 'G' then res += 'C'
    when 'C' then res += 'G'
    when 'T' then res += 'A'
    when 'A' then res += 'U'
    end
    res
  end
end
