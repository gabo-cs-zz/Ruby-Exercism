# Given a number n, determine what the nth prime is.
class Prime
  def self.nth(num)
    raise ArgumentError unless num != 0
    primes = [2]
    i = 3
    until primes.size >= num
      primes << i if prime?(primes, i)
      i += 2
    end
    primes[-1]
  end

  def self.prime?(primes, num)
    root = Math.sqrt(num)
    p = primes.take_while { |i| i <= root }
    p.none? { |i| (num % i).zero? }
  end
end
