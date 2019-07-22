module BookKeeping
  VERSION = 2
end
# Write a function to convert from normal numbers to Roman Numerals.
class Integer
  ltrs = %i[M CM D CD C XC L XL X IX V IV I]
  digits = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  ROMANS = Hash[*ltrs.zip(digits).flatten]

  def to_roman
    num = self
    res = ''
    ROMANS.each do |k, _v|
      until num < ROMANS[k]
        res += k.to_s
        num -= ROMANS[k]
      end
    end
    res
  end
end
