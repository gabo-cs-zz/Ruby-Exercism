def triangle(x) 
    x.times { |n| puts "*" * (n+1) } 
end 

# puts triangle(5)

print "Enter the side a: "
a = gets.to_f
print "Enter the side b: "
b = gets.to_f
c2 = (a**2) + (b**2)
puts "The triangle's hypotenuse is #{Math.sqrt(c2).round(2)} "