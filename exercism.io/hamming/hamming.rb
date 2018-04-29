# Calculate the Hamming difference between two DNA strands.
class Hamming
  def self.compute(st1, st2)
    raise ArgumentError unless st1.size == st2.size
    s = 0
    st1.size.times { |i| s += 1 if st1[i] != st2[i] }
    s
  end
end
