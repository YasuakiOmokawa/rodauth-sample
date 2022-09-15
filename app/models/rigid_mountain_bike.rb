# frozen_string_literal: true

class RigidMountainBike
  include MountainBike

  def initialize(type_code:, base_price:, commission:)
    @type_code = type_code
    @base_price = base_price
    @commission = commission
  end

  def price
    (1 + commission) * base_price
  end

  private

  attr_reader :type_code, :base_price, :commission
end
