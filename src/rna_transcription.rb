# Given a DNA strand, return its RNA complement (per RNA transcription).
require 'active_support'
require 'active_support/core_ext'

def rna_transc(st1)
  res, i = '', 0
  until i > st1.size do
    case st1[i]
      when 'G' then res += 'C'
      when 'C' then res += 'G'
      when 'T' then res += 'A'
      when 'A' then res += 'U'
    end
    i += 1
  end
  puts "The RNA Transcription of your DNA strands is #{res}."
end

$sw = true
puts 'Enter the DNA strand: '
st = (gets.chomp).upcase
arr = st.split('')
p arr
=begin
(st.size).times { |i|
  if (st[i] != 'C' && st[i] != 'G' && st[i] != 'T' && st[i] != 'A')
    $sw = false
  else 
    $sw = true
  end
}
$sw == false ? (rna_transc(st)) : (puts 'Please, enter a valid DNA strand')
=end
if (arr & ["C", "G", "T", "A"]).present? 
  puts "Right"
else puts "Wrong"
end
