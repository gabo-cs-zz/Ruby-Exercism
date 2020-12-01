# frozen_string_literal: true

EARTH_SECS = 31_557_600.to_f

PLANETS = {
  earth: 1,
  mercury: 0.2408467,
  venus: 0.61519726,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132
}.freeze

# Space Age class
class SpaceAge
  attr_reader :seconds

  def initialize(input)
    @seconds = input
  end

  PLANETS.keys.each do |name|
    define_method "on_#{name}" do
      seconds / (EARTH_SECS * PLANETS[name])
    end
  end
end
