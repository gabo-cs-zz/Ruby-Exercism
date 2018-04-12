# Calculate the sum of two numbers
=begin
puts "Hello world, we are going to calculate the sum of two numbers"
puts "Enter the first number:"
num1 = gets.to_i
puts "Enter the second number:"
num2 = gets.to_i
puts "The sum is #{num1 + num2}"
=end

# Calculate the factorial of a number:
=begin
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
=end

# Calculate the summation of a number x (from 1 to x)
puts "Enter a number to calculte its summation:"
x = gets.to_i
i = 1
sum = 0
until i > x do
  sum += i
  i+=1
end
puts sum