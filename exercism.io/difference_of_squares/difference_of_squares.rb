# Find the difference between the square of the sum and
# the sum of the squares of the first N natural numbers.
class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    (1..@num).each { |i| sum += i }
    sum**2
  end

  def sum_of_squares
    sum = 0
    (1..@num).each { |i| sum += i**2 }
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
