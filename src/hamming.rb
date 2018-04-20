# Calculate the Hamming difference between two DNA strands.

puts "Enter the first DNA strand: "
st1 = gets.upcase
puts "Enter the second DNA strand: "
st2 = gets.upcase
str1, str2 = st1.split(''), st2.split('')
str1.pop
str2.pop
res = Array.new
if st1.size != st2.size
  puts "The two strands must have the same length"
else 
  i, s = 0, 0
  while i < (str2.length) do
    if !(str1[i].eql?(str2[i]))
      s += 1
      res.push('^')
    end
    res << "" 
    i += 1
  end
  puts "Here is your result:"
  puts st1
  puts st2
  puts "#{res.join('')}"
  puts "The Hamming distance between these two DNA strands is #{s}."
end