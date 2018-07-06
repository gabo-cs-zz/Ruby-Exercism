module BookKeeping
  VERSION = 2
end
# Given a number, find the sum of all the unique multiples
# of particular numbers up to but not including that number.
class SumOfMultiples
  def initialize(*nums)
    @nums = nums
  end

  def to(num)
    return 0 if @nums.all? { |i| i > num }
    (@nums[0]...num).find_all { |i| multiples(i) }.inject { |sum, i| sum + i }
  end

  def multiples(num)
    @nums.any? { |mul| (num % mul).zero? }
  end
end
