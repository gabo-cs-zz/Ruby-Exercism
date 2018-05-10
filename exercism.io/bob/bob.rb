# Bob is a lackadaisical teenager. His responses are very limited.
class Bob
  def self.hey(remark)
    remark.strip!
    if remark.empty?
      'Fine. Be that way!'
    elsif remark.eql?(remark.upcase) && !remark.eql?(remark.downcase)
      'Whoa, chill out!'
    elsif remark[-1, 1].eql?('?')
      'Sure.'
    else 'Whatever.'
    end
  end
end
