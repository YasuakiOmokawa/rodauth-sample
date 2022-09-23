# frozen_string_literal: true

module StrategyPattern
  class FrontSuspensionMountainBike

    def initialize(params)
      @front_fork_travel = params[:front_fork_travel]
      @tire_width = params[:tire_width]
    end

    def off_road_ability
      @tire_width * StrategyPattern::MountainBike::TIRE_WITH_FACTOR +
      @front_fork_travel * StrategyPattern::MountainBike::FRONT_SUSPENSION_FACTOR
    end

    def price
      (1 + @commission) * @base_price + @front_suspension_price
    end
  end
end