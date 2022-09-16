# frozen_string_literal: true

module MountainBike
  extend ActiveSupport::Concern

  def price
    case type_code
    when :rigid
      raise 'never get here'
    when :front_suspension
      raise 'never get here2'
    when :full_suspension
      raise 'never get here3'
    end
  end
end
