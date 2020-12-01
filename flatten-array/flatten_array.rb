# Take a nested list and return a single flattened list with all values except nil/null.
class FlattenArray
  class << self
    def flatten(array, result = [])
      array.each do |item|
        item.class == Array ? result = flatten(item, result) : result << item
      end
      result.compact
    end
  end
end
