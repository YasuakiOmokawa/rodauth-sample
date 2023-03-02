# frozen_string_literal: true

class Factory::Pond
  def initialize(number_ducks)
    @ducks = []
    number_ducks.times do |i|
      duck = Factory::Duck.new("duck #{i}")
      @ducks << duck
    end
  end

  def simulate_one_day
    @ducks.each { |duck| duck.speak }
    @ducks.each { |duck| duck.eat }
    @ducks.each { |duck| duck.sleep }
  end
end
