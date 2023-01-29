# frozen_string_literal: true

class StrategyPattern::MountainBike
  extend Forwardable
  def_delegators :@bike_type, :off_road_ability, :price

  TIRE_WITH_FACTOR = 10
  FRONT_SUSPENSION_FACTOR = 20
  REAR_SUSPENSION_FACTOR = 30

  def initialize(bike_type)
    @bike_type = bike_type
  end
end
