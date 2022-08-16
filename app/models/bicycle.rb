class Bicycle
  include Schedulable

  def initialize(args={})
    @size = args[:size]
    @parts = args[:parts]
  end

  attr_reader :size, :parts

  def lead_days
    1
  end

  def spares
    parts.spares
  end
end