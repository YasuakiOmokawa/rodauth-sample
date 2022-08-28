# frozen_string_literal: true

class Rectangle < Shape
  attr_accessor :height, :width

  def calculate_area
    width * height
  end
end
