# frozen_string_literal: true

module MountainBike
  extend ActiveSupport::Concern

  def off_road_ability
    result = tire_width * TIRE_WIDTH_FACTOR
    if type_code == :front_suspension || type_code == :full_suspension
      result += front_fork_travel * FRONT_SUSPENSION_FACTOR
    end
    if type_code == :full_suspension
      result += rear_fork_travel * REAR_SUSPENSION_FACTOR
    end
    result
  end
end
