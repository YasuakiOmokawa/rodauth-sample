# frozen_string_literal: true

class Factory::OrganismFactory
  def initialize(plant_class, animal_class)
    @plant_class = plant_class
    @animal_class = animal_class
  end

  def new_animal(name)
    animal_class.new(name)
  end

  def new_plant(name)
    plant_class.new(name)
  end

  private

  attr_reader :animal_class, :plant_class
end
