# frozen_string_literal: true

class FrontSuspensionMountainBike

  TIRE_WIDTH_FACTOR = 10
  FRONT_SUSPENSION_FACTOR = 20

    @type_code = type_code
    @base_price = base_price
    @commission = commission
  end

  def price
    (1 + commission) * base_price + front_suspension_price
  end

  private

  def front_suspension_price
    100
  end

  attr_reader :type_code, :base_price, :commission
end
