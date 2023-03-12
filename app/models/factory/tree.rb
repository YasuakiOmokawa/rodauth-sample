# frozen_string_literal: true

class Factory::Tree
  def initialize(name)
    @name = name
  end

  def grow
    Rails.logger.debug { "木 #{@name} が高く育っています." }
  end
end
