class Bicycle
  include Schedulable

  def initialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  attr_reader :size

  def lead_days
    1
  end

  def spares
    parts.spares
  end

  private

  attr_reader :parts
end