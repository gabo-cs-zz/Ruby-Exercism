# Given a number n, determine what the nth prime is.
class Prime
	def self.nth (num)
		raise ArgumentError unless num != 0
		primes = [2]
		i = 1
		until primes.size == num do
			c = 0
			(1..i).each do |j|
				break if c > 2
				c+= 1 if i % j == 0
			end
			primes << i if c == 2
			i+=2
		end
		primes[-1]
	end
end
