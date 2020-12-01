# frozen_string_literal: true

# Given a string representing a matrix of numbers, return the rows and columns.
class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = to_rows(input)
    @columns = @rows.transpose
  end

  def to_rows(str)
    str.each_line.map { |row| row.split.map(&:to_i) }
  end
end
