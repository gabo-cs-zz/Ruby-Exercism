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
    # (@nums[0]...num).find_all {|i| @nums.any? {|n| i % n == 0} }.inject {|sum, i| sum + i}
    return 0 if @nums.all? {|i| i > num }
    (@nums[0]...num).inject do |sum, i|
      sum + i if @nums.find_all {|n| i % n == 0 }
    end
  end
end
