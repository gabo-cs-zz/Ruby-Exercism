module BookKeeping
  VERSION = 6
end
# Determine if a sentence is a pangram
class Pangram
  def self.pangram?(phrase)
    alph = ('a'..'z').to_a
    (alph - phrase.downcase.chars).empty?
  end
end
