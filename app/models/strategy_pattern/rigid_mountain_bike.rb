# frozen_string_literal: true

module StrategyPattern
  class RigidMountainBike

    def initialize(params)
      @tire_width = params[:tire_width]
    end

    def off_road_ability
      @tire_width * StrategyPattern::MountainBike::TIRE_WITH_FACTOR
    end

    def price
      (1 + @commission) * @base_price
    end
  end
end