# Given an input integer N, find all Pythagorean triplets for which `a + b + c = N`.
class Triplet
  def self.where(sum: nil, min_factor: 1, max_factor:)
    triplets =
      [*min_factor..max_factor]
      .combination(3)
      .map do |nums|
        triplet = new(*nums)
        triplet if triplet.pythagorean?
      end.compact
    sum ? triplets.select { |triplet| triplet.sum == sum } : triplets
  end

  private

  attr_reader :a, :b, :c

  def initialize(number_a, number_b, number_c)
    @a = number_a
    @b = number_b
    @c = number_c
  end

  public

  def sum
    [a, b, c].sum
  end

  def product
    [a, b, c].inject(:*)
  end

  def pythagorean?
    (a**2 + b**2 == c**2) && (a < b && b < c)
  end
end
