class Trip
  attr_reader :bicycles, :customers, :vehicle

  # 'mechanic' accepts any class type
  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end
end