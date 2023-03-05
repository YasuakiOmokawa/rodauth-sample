# frozen_string_literal: true

class Factory::FrogPond < Factory::Pond
  def new_animal(name)
    ::Factory::Frog.new(name)
  end
end
