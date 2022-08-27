class Bicycle
  include Schedulable

  attr_reader :parts

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
end