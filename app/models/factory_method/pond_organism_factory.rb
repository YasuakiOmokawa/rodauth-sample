# frozen_string_literal: true

module FactoryMethod
  class PondOrganismFactory
    def build_animal(name)
      FactoryMethod::Duck.new(name)
    end

    def build_plant(name)
      FactoryMethod::WaterLily.new(name)
    end
  end
end
