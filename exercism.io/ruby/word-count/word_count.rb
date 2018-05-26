module BookKeeping
  VERSION = 1
end
# Given a phrase, count the occurrences of each word in that phrase.
class Phrase
  def initialize(str)
    @str = str.downcase
    @str.gsub!(/[^a-z\d']/, ' ')
    @str.gsub!(/'([\S]+)'/, '\1')
  end

  def word_count
    oc = {}
    word = @str.split
    word.each { |i| oc[i] = word.count { |c| i.eql?(c) } }
    oc
  end
end
