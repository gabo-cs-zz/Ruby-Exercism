# Convert a hexadecimal number to its decimal.
class Hexadecimal
  HEX = %w[0 1 2 3 4 5 6 7 8 9 a b c d e f].freeze

  def initialize(input)
    @input = input.downcase
  end

  def to_decimal
    return 0 unless @input =~ /^[0-9a-f]+$/

    @input.reverse.each_char.with_index.sum { |i, j| HEX.index(i) * 16**j }
  end
end
