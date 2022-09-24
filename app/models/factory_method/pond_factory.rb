# frozen_string_literal: true

module FactoryMethod
  class PondFactory
    def initialize(number_animals:, number_plants:, animal_class: FactoryMethod::Duck,
                   plant_class: FactoryMethod::WaterLily)
      @animal_class = animal_class
      @plant_class = plant_class

      @animals = []
      number_animals.times do |i|
        add_animal(animal_class.new("動物#{i}"))
      end

      @plants = []
      number_plants.times do |i|
        add_plants(plant_class.new("植物#{i}"))
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

    attr_reader :animal_class, :plant_class
  end
end
