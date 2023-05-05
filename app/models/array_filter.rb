# frozen_string_literal: true

class ArrayFilter
  def initialize(array)
    @array = array
  end

  def reject_half_of(max)
    max = max.to_f
    array.reject { |element| element / 2.0 >= max }
  end

  private

  attr_reader :array
end
