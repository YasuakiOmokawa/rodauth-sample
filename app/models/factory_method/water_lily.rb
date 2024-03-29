# frozen_string_literal: true

class FactoryMethod::WaterLily
  def initialize(name)
    @name = name
  end

  def grow
    "スイレン #{name} は日光を浴びて育ちます。"
  end

  private

  attr_reader :name
end
