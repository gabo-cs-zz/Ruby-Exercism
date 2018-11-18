# Convert a phrase to its acronym.
class Acronym
  def self.abbreviate(str)
    str.scan(/\b\w/).join.upcase
  end
end
