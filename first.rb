=begin
# Calculate the sum of two numbers
puts "Hello world, we are going to calculate the sum of two numbers"
puts "Enter the first number:"
num1 = gets.to_i
puts "Enter the second number:"
num2 = gets.to_i
puts "The sum is #{num1 + num2}"


# Calculate the factorial of a number:
puts "Enter a number to calculate its factorial:"
num = gets.to_i

def factorial(n)
  if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

puts factorial(num)

# Calculate the summation of a number x (from 1 to x)
puts "Enter a number to calculte its summation:"
x = gets.to_i

def summation(n)
  if n == 0
    return 0
  else
    return n + summation(n-1)
  end
end

puts summation(x)
=end

# Calculate the sum of the 15 first digits of the fibonacci sequence
aux, aux2, temp, i = 0, 1, 0, 1
nums = Array.new
nums.push(temp)
until i > 15
  aux = aux2
  aux2 = temp
  temp = aux + aux2
  nums.push(temp)
  i += 1
end
puts "These are the 15 first digits:"
p nums
puts "And the sum of these numbers is:"
sum = 0
nums.each do | k |
  sum += k
end
puts sum