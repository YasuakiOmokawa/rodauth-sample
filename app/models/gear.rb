# frozen_string_literal: true

class Gear
  def initialize(chainring:, cog:, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def gear_inches
    (ratio * wheel.width).round(1)
  end

  def set_cog(new_cog)
    @cog = new_cog
    changed
  end
  private

  attr_reader :chainring, :cog, :wheel

  def ratio
    chainring / cog.to_f
  end
end
