# frozen_string_literal: true

# Anagram
class Anagram
  def initialize(input)
    @word = input
  end

  def match(array)
    array.each.select do |matcher|
      anagram?(matcher, @word) && matcher.casecmp(@word) != 0
    end
  end

  def anagram?(str1, str2)
    str1.downcase.chars.sort == str2.downcase.chars.sort
  end
end
