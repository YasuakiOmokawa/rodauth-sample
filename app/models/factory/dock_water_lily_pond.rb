# frozen_string_literal: true

class Factory::DuckWaterLilyPond < Factory::Pond
  def new_organism(type, name)
    if type == :animal
      ::Factory::Duck.new(name)
    elsif type == :plant
      ::Factory::WaterLily.new(name)
    else
      raise "Unknown type #{type}"
    end
  end
end
