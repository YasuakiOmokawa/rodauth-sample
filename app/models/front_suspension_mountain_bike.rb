# frozen_string_literal: true

class FrontSuspensionMountainBike
  TIRE_WIDTH_FACTOR = 10
  FRONT_SUSPENSION_FACTOR = 20

  def initialize(base_price:, commission:, tire_width:, front_fork_travel:)
    @base_price = base_price
    @commission = commission
    @tire_width = tire_width
    @front_fork_travel = front_fork_travel
  end

  def price
    ((1 + commission) * base_price) + front_suspension_price
  end

  def off_road_ability
    (tire_width * TIRE_WIDTH_FACTOR) + (front_fork_travel * FRONT_SUSPENSION_FACTOR)
  end

  private

  def front_suspension_price
    100
  end

  attr_reader :base_price, :commission, :tire_width, :front_fork_travel
end
