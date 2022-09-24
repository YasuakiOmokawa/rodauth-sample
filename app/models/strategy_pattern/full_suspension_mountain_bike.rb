# frozen_string_literal: true

module StrategyPattern
  class FullSuspensionMountainBike
    def initialize(params)
      @front_fork_travel = params[:front_fork_travel]
      @tire_width = params[:tire_width]
      @front_suspension_price = params[:front_suspension_price]
      @rear_suspension_price = params[:rear_suspension_price]
      @base_price = params[:base_price]
      @commission = params[:commission]
      @rear_fork_travel = params[:rear_fork_travel]
    end

    def off_road_ability
      (@tire_width * StrategyPattern::MountainBike::TIRE_WITH_FACTOR) +
        (@front_fork_travel * StrategyPattern::MountainBike::FRONT_SUSPENSION_FACTOR) +
        (@rear_fork_travel * StrategyPattern::MountainBike::REAR_SUSPENSION_FACTOR)
    end

    def price
      ((1 + @commission) * @base_price) + @front_suspension_price + @rear_suspension_price
    end
  end
end
