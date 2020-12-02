# Detect saddle points in a matrix.
class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = input.each_line.map { |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    list = []
    (0...rows.length).each do |i|
      (0...columns.length).each do |j|
        list << [i, j] if rows[i][j] == rows[i].max && rows[i][j] == columns[j].min
      end
    end
    list
  end
end
