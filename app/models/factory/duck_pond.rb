# frozen_string_literal: true

class Factory::DuckPond < Factory::Pond
  def new_animal(name)
    ::Factory::Duck.new(name)
  end
end
