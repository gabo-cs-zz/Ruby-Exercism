# frozen_string_literal: true

# Implement a clock that handles times without dates.
class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    minute_quotient = minute / 60
    new_hour = hour + minute_quotient
    @hour = new_hour - (new_hour / 24) * 24
    @minute = minute - (minute_quotient * 60)
  end

  def to_s
    "#{hour.to_s.rjust(2, '0')}:#{minute.to_s.rjust(2, '0')}"
  end

  def +(other)
    Clock.new(hour: hour + other.hour, minute: minute + other.minute)
  end

  def -(other)
    Clock.new(hour: hour - other.hour, minute: minute - other.minute)
  end

  def ==(other)
    return false if other.nil? || !other.instance_of?(Clock)

    to_s == other.to_s
  end
end
