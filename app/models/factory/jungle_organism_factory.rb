# frozen_string_literal: true

class Factory::JungleOrganismFactory
  def new_animal(name)
    ::Factory::Tiger.new(name)
  end

  def new_plant(name)
    ::Factory::Tree.new(name)
  end
end
