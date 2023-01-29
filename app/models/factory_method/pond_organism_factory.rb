# frozen_string_literal: true

class FactoryMethod::PondOrganismFactory
  def initialize(animal_class:, plant_class:)
    @animal_class = animal_class
    @plant_class = plant_class
  end

  def build_animal(name)
    @animal_class.new(name)
  end

  def build_plant(name)
    @plant_class.new(name)
  end
end
