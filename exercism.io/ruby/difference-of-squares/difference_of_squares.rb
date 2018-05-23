module BookKeeping
  VERSION = 4
end
# Find the difference between the square of the sum and
# the sum of the squares of the first N natural numbers.
class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = (1..@num).reduce(:+)
    sum**2
  end

  def sum_of_squares
    (1..@num).inject { |sum, i| sum + i**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
