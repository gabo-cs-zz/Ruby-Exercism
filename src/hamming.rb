# Calculate the Hamming difference between two DNA strands.
def ham_dif(st1, st2)
  res, i, s = [], 0, 0
  until i > st1.size do
    if st1[i] != st2[i]
      s += 1
      res.push('^')
    else 
      res.push(' ')
    end
    i += 1
  end
  puts 'Here is your result:', st1, st2, "#{res.join}"
  puts "The Hamming Distance between these two DNA strands is #{s}."
end

puts 'Enter the first DNA strand: '
st1 = gets.chomp.upcase
puts 'Enter the second DNA strand: '
st2 = gets.chomp.upcase
unless st1.size == st2.size
  puts 'The strands must have the same length.'
else 
  ham_dif(st1, st2)
end