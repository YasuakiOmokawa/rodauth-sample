# frozen_string_literal: true

class Gear
  def initialize(chainring:, cog:, wheel:, observer:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
    @observer = observer
  end

  def gear_inches
    (ratio * wheel.width).round(1)
  end

  def set_cog(new_cog)
    @cog = new_cog
    changed
  end

  def set_chainring(new_chainring)
    @chainring = new_chainring
    changed
  end

  private

  attr_reader :chainring, :cog, :wheel, :observer

  def ratio
    chainring / cog.to_f
  end

  def changed
    observer.changed(chainring, cog)
  end
end
