# Calculate the sum of two numbers
=begin
puts "Hello world, we are going to calculate the sum of two numbers"
puts "Enter the first number:"
num1 = gets.to_i
puts "Enter the second number:"
num2 = gets.to_i
puts "The sum is "+(num1 + num2).to_s
=end


# Calculate the factorial of a number:
puts "Enter a number to calculte its factorial:"
num = gets.to_i

def factorial(n)
  if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end
puts factorial(num)

# Calculate the sum of the first 15 numbers of the fibonnacci sequence: