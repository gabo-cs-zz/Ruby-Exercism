# Given a phrase, count the occurrences of each word in that phrase.
class Phrase
  def initialize(str)
    @str = str.downcase
    @str.gsub!(/[^a-z0-9']/, ' ')
    @str.gsub!(/'([\S]+)'/, '\1')
  end

  def word_count
    oc = {}
    word = @str.split
    word.each do |i|
      count = 0
      word.each { |c| count += 1 if i.eql?(c) }
      oc[i] = count
    end
    oc
  end
end
