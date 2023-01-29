# frozen_string_literal: true

class FactoryMethod::PondFactory
  def initialize(number_animals:, number_plants:, organism_factory:)
    @organism_factory = organism_factory

    @animals = []
    number_animals.times do |i|
      add_animal(organism_factory.build_animal("動物#{i}"))
    end

    @plants = []
    number_plants.times do |i|
      add_plants(organism_factory.build_plant("植物#{i}"))
    end
  end

  def simulate_one_day
    result = @plants.map(&:grow)
    result += @animals.map(&:speak)
    result += @animals.map(&:eat)
    result += @animals.map(&:sleep)
  end

  private

  def add_animal(animal)
    @animals << animal
  end

  def add_plants(plant)
    @plants << plant
  end

  attr_reader :organism_factory
end
