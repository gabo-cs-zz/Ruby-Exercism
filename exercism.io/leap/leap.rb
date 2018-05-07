# Given a year, report if it is a leap year.
class Year
  def self.leap?(year)
    f = (year % 4).zero? && !(year % 100).zero?
    s = (year % 100).zero? && (year % 400).zero?
    f || s
  end
end
