# frozen_string_literal: true

module StrategyPattern
  class FullSuspensionMountainBike

    def initialize(params)
      @tire_width = params[:tire_width]
      @front_fork_travel = params[:front_fork_travel]
      @rear_fork_travel = params[:rear_fork_travel]
    end

    def off_road_ability
      @tire_width * StrategyPattern::MountainBike::TIRE_WITH_FACTOR +
      @front_fork_travel * StrategyPattern::MountainBike::FRONT_SUSPENSION_FACTOR +
      @rear_fork_travel * StrategyPattern::MountainBike::REAR_SUSPENSION_FACTOR
    end

  end
end