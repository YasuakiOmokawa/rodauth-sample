# frozen_string_literal: true

class Factory::Pond
  def initialize(number_animals, number_plants, animal_class, plant_class)
    @animal_class = animal_class
    @plant_class = plant_class

    @animals = []
    number_animals.times do |i|
      animal = new_organism(:animal, "animal #{i}")
      @animals << animal
    end

    @plants = []
    number_plants.times do |i|
      plant = new_organism(:plant, "plant #{i}")
      @plants << plant
    end
  end

  def new_organism(type, name)
    if type == :animal
      @animal_class.new(name)
    elsif type == :plant
      @plant_class.new(name)
    else
      raise "Unknown type #{type}"
    end
  end

  def simulate_one_day
    @plants.each { |plant| plant.grow }
    @animals.each { |animal| animal.speak }
    @animals.each { |animal| animal.eat }
    @animals.each { |animal| animal.sleep }
  end
end
