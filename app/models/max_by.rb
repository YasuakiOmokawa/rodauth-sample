# frozen_string_literal: true

class MaxBy < Max
  def over?(n, by: 0)
    max + by < n
  end

  private

  attr_reader :max
end
