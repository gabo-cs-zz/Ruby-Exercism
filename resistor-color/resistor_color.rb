# frozen_string_literal: true

class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(item)
    COLORS.index(item)
  end
end
