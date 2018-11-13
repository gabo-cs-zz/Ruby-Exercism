module BookKeeping
  VERSION = 1
end
# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  def self.square(num)
    raise ArgumentError unless num.between?(1, 64)
    2**(num - 1)
  end

  def self.total
    (square(64) * 2) - 1
  end
end
