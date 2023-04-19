# frozen_string_literal: true

class Max
  def initialize(max)
    @max = max
  end

  def over?(n)
    max < n
  end

  private

  attr_reader :max
end
