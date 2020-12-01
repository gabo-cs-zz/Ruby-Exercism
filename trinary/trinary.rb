# Convert a trinary number to its decimal equivalent using first principles.

class Trinary
  def initialize(input)
    @input = input
  end

  def to_decimal
    return 0 if @input =~ /[^$|012]/

    @input.reverse.each_char.with_index.sum { |i, j| i.to_i * (3**j) }
  end
end
