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
  end
end