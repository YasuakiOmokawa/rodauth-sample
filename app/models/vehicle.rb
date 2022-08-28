# frozen_string_literal: true

class Vehicle
  include Schedulable

  def lead_days
    3
  end
end
