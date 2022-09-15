# frozen_string_literal: true

module MountainBike
  extend ActiveSupport::Concern

  def price
    case type_code
    when :rigid
      raise 'never get here'
    when :front_suspension
      (1 + commission) * base_price + front_suspension_price
    when :full_suspension
      (1 + commission) * base_price + front_suspension_price + rear_suspension_price
    end
  end
end
