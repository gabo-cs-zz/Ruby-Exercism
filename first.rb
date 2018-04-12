# Calculate the sum of two numbers
=begin
puts "Hello world, we are going to calculate the sum of two numbers"
puts "Enter the first number:"
num1 = gets.to_i
puts "Enter the second number:"
num2 = gets.to_i
puts "The sum is "+(num1 + num2).to_s
=end


# Calculate the sum of the first 15 numbers os the fibonnacci sequence:
def fibonacci( n )
    [ n ] if ( 0..1 ).include? n
    ( fibonacci( n - 1 ) + fibonacci( n - 2 ) ) if n > 1
end

puts fibonacci( 5 )
