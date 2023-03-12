# frozen_string_literal: true

class Factory::PondOrganismFactory
  def new_animal(name)
    ::Factory::Frog.new(name)
  end

  def new_plant(name)
    ::Factory::Algae.new(name)
  end
end
