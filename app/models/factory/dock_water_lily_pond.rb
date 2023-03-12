# frozen_string_literal: true

class Factory::DuckWaterLilyPond < Factory::Pond
  def new_organism(type, name)
    case type
    when :animal
      ::Factory::Duck.new(name)
    when :plant
      ::Factory::WaterLily.new(name)
    else
      raise "Unknown type #{type}"
    end
  end
end
