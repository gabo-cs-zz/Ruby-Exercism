# Use the Sieve of Eratosthenes to find the primes from 2 up to a given number.
class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    list = (2..@num).to_a
    list.each do |i|
      (i..@num).each { |j| list.delete(i * j) } if i**2 < @num
    end
    list
  end
end
