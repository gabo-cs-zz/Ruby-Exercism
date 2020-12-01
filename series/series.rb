# frozen_string_literal: true

# Output all the contiguous substrings of a string of digits.
class Series
  def initialize(input)
    @input = input
  end

  def slices(num)
    raise ArgumentError if num > @input.size

    @input.each_char.each_cons(num).map(&:join)
  end
end
