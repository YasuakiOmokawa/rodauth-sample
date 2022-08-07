class Trip
  attr_reader :bicycles, :customers, :vehicle

  # 'mechanic' accepts any class type
  def prepare(prepares)
    prepares.each do |prepare|
      case prepare
      when Mecanic
        prepare.prepare_bicycles(bicycles)
      when TripCordinator
        prepare.buy_food(customers)
      when Driver
        prepare.gas_up(vehicle)
        prepare.fill_water_tank(vehicle)
      end
    end
  end
end