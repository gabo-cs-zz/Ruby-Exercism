# Calculate the Hamming difference between two DNA strands.
def ham_dif(st1, st2)
  s = 0
	st1.size.times { |i| s += 1 if st1[i] != st2[i] }
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
