# frozen_string_literal: true

class Bicycle
  include Schedulable

  attr_reader :parts, :size

  def initialize(args = {})
    @size = args[:size]
    @parts = args[:parts]
  end

  def lead_days
    1
  end

  delegate :spares, to: :parts
end
