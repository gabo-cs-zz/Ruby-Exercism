# Given a number (Max 4 digs), return its value in string form.
# 5412 will output: five thousand four hundred twelve
$sw = true;
def first(x)
  t = 'thousand'
  case x
    when 1 then return "one #{t} "
    when 2 then return "two #{t} "
    when 3 then return "three #{t} "
    when 4 then return "four #{t} "
    when 5 then return "five #{t} "
    when 6 then return "six #{t} "
    when 7 then return "seven #{t} "
    when 8 then return "eight #{t} "
    when 9 then return "nine #{t} "
   end
end
      
def second(x)
  h = 'hundred'
  case x
    when 1 then return "one #{h} "
    when 2 then return "two #{h} "
    when 3 then return "three #{h} "
    when 4 then return "four #{h} "
    when 5 then return "five #{h} "
    when 6 then return "six #{h} "
    when 7 then return "seven #{h} "
    when 8 then return "eight #{h} "
    when 9 then return "nine #{h} "
   end
end

def ten(x)
  $sw = !$sw
  case x
    when 0 then return 'ten'
    when 1 then return 'eleven'
    when 2 then return 'twelve '
    when 3 then return 'thirteen'
    when 4 then return 'fourteen'
    when 5 then return 'fifteen'
    when 6 then return 'sixteen'
    when 7 then return 'seventeen'
    when 8 then return 'eighteen'
    when 9 then return 'nineteen'
  end
end
      
def third(x, y=nil)
  case x
    when 1 then return ten(y)
    when 2 then return 'twenty '
    when 3 then return 'thirty '
    when 4 then return 'forty '
    when 5 then return 'fifty '
    when 6 then return 'sixty '
    when 7 then return 'seventy '
    when 8 then return 'eighty '
    when 9 then return 'ninety '
   end
end
      
def fourth(x)
  if $sw
    case x
      when 1 then return 'one'
      when 2 then return 'two'
      when 3 then return 'three'
      when 4 then return 'four'
      when 5 then return 'five'
      when 6 then return 'six'
      when 7 then return 'seven'
      when 8 then return 'eight'
      when 9 then return 'nine'
     end
   else
     return ''
   end
end

# first: thousands, second: hundreds, third: tens, fourth: ones
puts 'Enter a number: '
n = gets.to_i
if n == 0
  puts "zero"
elsif n < 0 or n > 9999
  puts "The number can't be negative or greater than 4"
else
  nums = []
  until n == 0 do
    dig = n % 10
    nums.unshift(dig)
    n /= 10
  end
    if nums.size == 1
      puts fourth(nums[0]), "\n"
    elsif nums.size == 2
        print third(nums[0], nums[1]), fourth(nums[1]), "\n"
    elsif nums.size == 3
        print second(nums[0]), third(nums[1], nums[2]), fourth(nums[2]), "\n"
    else 
      print first(nums[0]), second(nums[1]), third(nums[2], nums[3]), fourth(nums[3]), "\n"
    end
end