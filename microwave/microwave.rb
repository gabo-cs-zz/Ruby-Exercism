# frozen_string_literal: true

# Convert the buttons entered on the microwave panel to their timer equivalent.
class Microwave
  private

  attr_reader :buttons_entered

  def initialize(buttons_entered)
    @buttons_entered = buttons_entered
  end

  public

  def timer
    Time.at(buttons_entered - value_to_deduct).utc.strftime('%M:%S')
  end

  def value_to_deduct
    return 0 if buttons_entered < 100

    digits = buttons_entered.digits
    (digits.last * 4).to_s.ljust((digits.size - 1), '0').to_i
  end
end
