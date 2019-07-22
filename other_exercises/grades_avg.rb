def avg(n)
  sum = 0
  n.times { |i|
    print "Grade #{i+1}: "
    g = gets.to_f
    sum += g
  }
  puts "Your average is #{(sum/n).round(2)}"
end

print 'Enter the number of grades: '
n = gets.to_i
avg(n)