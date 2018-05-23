module BookKeeping
  VERSION = 3
end
# Calculate the Hamming difference between two DNA strands.
class Hamming
  def self.compute(st1, st2)
    raise ArgumentError unless st1.size == st2.size
    (0...st1.size).count { |i| st1[i] != st2[i] }
  end
end
