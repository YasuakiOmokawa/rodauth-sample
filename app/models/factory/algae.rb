# frozen_string_literal: true

class Factory::Algae
  def initialize(name)
    @name = name
  end

  def grow
    Rails.logger.debug { "藻 #{@name} は日光を浴びて育ちます." }
  end
end
