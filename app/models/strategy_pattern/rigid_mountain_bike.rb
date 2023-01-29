# frozen_string_literal: true

class StrategyPattern::RigidMountainBike
  def initialize(params)
    @tire_width = params[:tire_width]
    @base_price = params[:base_price]
    @commission = params[:commission]
  end

  def off_road_ability
    @tire_width * StrategyPattern::MountainBike::TIRE_WITH_FACTOR
  end

  def price
    (1 + @commission) * @base_price
  end
end
