# frozen_string_literal: true

class RoadBikeParts < Parts
  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    {
      tape_color:
    }
  end

  def default_tire_size
    '23'
  end

  private

  attr_reader :tape_color
end
