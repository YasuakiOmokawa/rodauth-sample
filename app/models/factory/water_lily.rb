# frozen_string_literal: true

class Factory::WaterLily
  def initialize(name)
    @name = name
  end

  def grow
    Rails.logger.debug { "睡蓮 #{@name} は浮きながら育ちます." }
  end
end
