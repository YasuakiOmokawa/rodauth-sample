class Bicycle
  include Schedulable

  attr_reader :size, :chain, :tire_size

  def lead_days
    1
  end
end