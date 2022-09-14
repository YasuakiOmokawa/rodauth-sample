# frozen_string_literal: true

class FrontSuspensionMountainBike
  include MountainBike

  def initialize(type_code:, base_price:, commission:)
    @type_code = type_code
    @base_price = base_price
    @commission = commission
  end

  private

  def front_suspension_price
    100
  end

  attr_reader :type_code, :base_price, :commission
end
