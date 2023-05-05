# frozen_string_literal: true

class ArrayFilter
  def initialize(array)
    @array = array
  end

  def reject_double_of(max)
    max = max.to_f * 2
    array.reject { |element| element >= max }
  end

  private

  attr_reader :array
end
