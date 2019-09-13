# Given an input text output it transposed.
class Transpose
  def self.transpose(input)
    input = input.split("\n")
    length = input.map(&:size).max
    input.map { |row| row.ljust(length).chars }
         .transpose
         .map(&:join)
         .join("\n")
  end
end
