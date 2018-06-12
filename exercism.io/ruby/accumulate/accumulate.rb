module BookKeeping
  VERSION = 1
end
# Implement the `accumulate` operation.
class Array
  def accumulate
    res = []
    each { |i| res << yield(i) }
    res
  end
end
