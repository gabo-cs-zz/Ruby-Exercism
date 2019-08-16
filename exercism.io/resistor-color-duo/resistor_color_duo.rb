# frozen_string_literal: true

# Resistor Color Duo. It's known that the program will take TWO colors as input.
class ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.value(colors)
    "#{COLORS.index(colors.first)}#{COLORS.index(colors.last)}".to_i
  end
end
