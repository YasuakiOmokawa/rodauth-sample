class Trip
  attr_reader :bicycles, :customers, :vehicle

  # 'mechanic' accepts any class type
  def prepare(prepares)
    prepares.each do |prepare|
      prepare.prepare_trip(self)
    end
  end
end