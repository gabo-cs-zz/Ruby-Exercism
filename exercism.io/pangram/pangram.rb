# Determine if a sentence is a pangram
class Pangram
  def self.pangram?(phrase)
    alph = ('a'..'z').to_a
    diff = alph - phrase.downcase.chars
    diff.empty?
  end
end
