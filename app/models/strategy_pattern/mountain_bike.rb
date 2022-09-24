# frozen_string_literal: true

module StrategyPattern
  class MountainBike
    extend Forwardable
    def_delegators :@bike_type, :off_road_ability, :price

    TIRE_WITH_FACTOR = 10
    FRONT_SUSPENSION_FACTOR = 20
    REAR_SUSPENSION_FACTOR = 30

    def initialize(bike_type)
      @bike_type = bike_type
    end
  end
end
