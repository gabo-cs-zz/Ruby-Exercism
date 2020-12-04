# Determine whether a number is an Armstrong number.
class ArmstrongNumbers
  def self.include?(number)
    str_number = number.to_s
    number_of_digits = str_number.size
    number == str_number.chars.map { |num| num.to_i**number_of_digits }.sum
  end
end
