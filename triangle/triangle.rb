# frozen_string_literal: true

# Determine if a triangle is equilateral, isosceles, or scalene.
class Triangle
  def initialize(input)
    @input = input
  end

  def valid?
    a, b, c = @input
    @input.sum != 0 && ((a - b).abs < c && c < a + b)
  end

  def equilateral?
    return false unless valid?

    @input.max == @input.min
  end

  def isosceles?
    return false unless valid?

    arr = @input.sort.reverse
    arr[0] == arr[1]
  end

  def scalene?
    return false unless valid?

    arr = @input.sort.reverse
    arr[0] != arr.last && arr[0] != arr[1]
  end
end
