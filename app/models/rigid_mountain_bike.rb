# frozen_string_literal: true

class RigidMountainBike
  # include MountainBike

  TIRE_WIDTH_FACTOR = 10

  def initialize(base_price:, commission:, tire_width:)
    @base_price = base_price
    @commission = commission
    @tire_width = tire_width
  end

  def price
    (1 + commission) * base_price
  end

  def off_road_ability
    tire_width * TIRE_WIDTH_FACTOR
  end

  private

  attr_reader :base_price, :commission, :tire_width
end
