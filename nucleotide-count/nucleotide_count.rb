# frozen_string_literal: true

# Compute how many times each nucleotide occurs in a DNA string.
class Nucleotide
  def self.from_dna(dna_string)
    new(dna_string)
  end

  private

  attr_reader :dna_string

  def initialize(dna_string)
    raise ArgumentError if dna_string =~ /[BD-FH-SU-Z]/

    @dna_string = dna_string
  end

  public

  def count(nucleotide_symbol)
    histogram[nucleotide_symbol]
  end

  def histogram
    histogram = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    dna_string.each_char.with_object(histogram) { |char, obj| obj[char] += 1 }
  end
end
