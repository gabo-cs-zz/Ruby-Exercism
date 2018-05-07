# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  def self.square(num)
    raise ArgumentError unless num.between?(1, 64)
    2**(num - 1)
  end

  def self.total
    (1..64).inject { |t, i| t + 2**(i - 1) }
  end
end
