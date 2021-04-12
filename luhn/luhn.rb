# Given a number determine whether or not it is valid per the Luhn formula.
class Luhn
  def self.valid?(input)
    new(input).valid?
  end

  private

  attr_reader :input

  def initialize(input)
    @input = input.reverse.strip
  end

  public

  def valid?
    return false unless input =~ /^[\d\s]{2,}$/

    (all_digits_sum % 10).zero?
  end

  private

  def double_every_second_digit
    base = input.gsub(/\s/, '')
    base.each_char.each_with_index do |value, index|
      if index.odd?
        doubled_digit = value.to_i * 2
        base[index] = (doubled_digit > 9 ? doubled_digit - 9 : doubled_digit).to_s
      end
    end
  end

  def all_digits_sum
    double_every_second_digit.split('').sum(&:to_i)
  end
end
