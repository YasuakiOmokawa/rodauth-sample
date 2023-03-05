# frozen_string_literal: true

class Factory::Pond
  def initialize(number_animals)
    @animals = []
    number_animals.times do |i|
      animal = new_animal("animal #{i}")
      @animals << animal
    end
  end

  def simulate_one_day
    @animals.each { |animal| animal.speak }
    @animals.each { |animal| animal.eat }
    @animals.each { |animal| animal.sleep }
  end
end
