# frozen_string_literal: true

# Resistor Color Trio. The program will take 3 colors as input, and outputs the correct value, in ohms.
class ResistorColorTrio
  COLORS = {
    'black' => 0,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 4,
    'green' => 5,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8,
    'white' => 9
  }.freeze

  private

  attr_reader :colors

  def initialize(colors)
    @colors = colors
  end

  public

  def label
    raise ArgumentError unless colors.all? { |color| COLORS.include? color }

    'Resistor value: ' + label_value
  end

  private

  def label_value
    total = main_value * zeros
    quotient = total / 1000
    quotient.positive? && "#{quotient} kiloohms" || "#{total} ohms"
  end

  def zeros(color_for_zeros = colors[2])
    10**COLORS[color_for_zeros]
  end

  def main_value(first_value = colors[0], second_value = colors[1])
    "#{COLORS[first_value]}#{COLORS[second_value]}".to_i
  end
end
