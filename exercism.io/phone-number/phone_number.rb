# frozen_string_literal: true

PATTERN = /^\(?([2-9][0-9]{2})\)?([2-9](?!11)[0-9]{2})([0-9]{4})$/.freeze

# Clean up NANP phone numbers
class PhoneNumber
  def self.clean(input)
    input.gsub!(/[^\d]/, '')
    input = input[1..-1] if input[0].to_i < 2
    input if input =~ PATTERN
  end
end
