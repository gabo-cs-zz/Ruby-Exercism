# Calculate the operations of two numbers
print "Enter the first number: "
num1 = gets.to_i
print "Enter the second number: "
num2 = gets.to_i
puts "The sum is #{num1 + num2}"
puts "The subtraction is #{num1 - num2}"
puts "The multiplication is #{num1 * num2}"
num2 == 0 ? (puts "The division by 0 is not defined") : (puts "The division is #{num1.to_f / num2}")

# Calculate the factorial of a number:
puts "\nEnter a number to calculate its factorial:"
num = gets.to_i

def factorial(n)
  if n == 0
    return 1
  elsif n < 0
    puts "It's not possible to compute the factorial of a negative number."
  else
    return n * factorial(n-1)
  end
end

puts factorial(num)

# Calculate the summation of a number x (from 1 to x)
puts "\nEnter a number to calculte its summation:"
x = gets.to_i

def summation(n)
  if n == 0
    return 0
  elsif n < 0
    puts "Please don't enter a negative number."
  else
    return n + summation(n-1)
  end
end

puts summation(x)


# Calculate the sum of the 15 first digits of the fibonacci sequence
aux, aux2, temp, sum, c = 0, 1, 0, 0, 1
nums = [0]
until c >= 15
  aux = aux2
  aux2 = temp
  temp = aux + aux2
  nums.push(temp)
  c += 1
end
puts "\nThese are the 15 first digits of the fibonacci sequence:"
p nums
puts "And the summation of these numbers is:"
nums.each do | i |
  sum += i
end
puts sum