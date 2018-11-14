module BookKeeping
  VERSION = 1
end
# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  SQUARES = (1..64)
  def self.square(num)
    raise ArgumentError unless SQUARES.cover? num
    2**(num - 1)
  end

  def self.total
    square(SQUARES.max) * 2 - 1
  end
end
