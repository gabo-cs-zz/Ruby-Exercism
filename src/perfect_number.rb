puts "Enter a number: "
num = gets.to_i
i, s = 1, 0
while i < num
  if num % i == 0
    s += i
  end
  i += 1
end
 if s == num
   puts 'The number is perfect'
 else
   puts 'The number is NOT perfect'
 end