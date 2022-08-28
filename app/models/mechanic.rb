# frozen_string_literal: true

class Mechanic
  include Schedulable

  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end

  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    # ...
  end

  def lead_days
    4
  end
end
