# frozen_string_literal: true

class Gear
  def initialize(chainring:, cog:, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def gear_inches
    (ratio * wheel.diameter).round(1)
  end

  private

  attr_reader :chainring, :cog, :wheel

  def ratio
    chainring / cog.to_f
  end
end
